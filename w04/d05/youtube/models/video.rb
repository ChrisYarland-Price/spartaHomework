class VideoPost
  attr_accessor :id, :title, :description, :url

  def self.open_connection
    PG.connect(dbname: 'meTube')
  end
  def self.hydrate video_data
    video = VideoPost.new
    video.id = video_data['id']
    video.title = video_data['title']
    video.description = video_data['description']
    video.url = video_data['url']
    video
  end
  def self.all
    conn = self.open_connection
    sql = "SELECT * FROM videos ORDER BY id;"
    results = conn.exec(sql)
    results.map { |result| self.hydrate(result) }
  end
  def self.find( id )
    conn = self.open_connection
    sql = "SELECT * FROM videos WHERE id = #{id} LIMIT 1;"
    results = conn.exec(sql)
    self.hydrate(results[0])
  end

  def save
    conn = VideoPost.open_connection
    title = sanitize(self.title)
    description = sanitize(self.description)
    url = sanitize(self.url)
    if(!self.id) 
      # Insert a new record in to the database
      sql = "INSERT INTO videos (title , description, url) VALUES ( '#{title}', '#{description}', '#{url}')"
    else 
      # Update an existing one
      sql = "UPDATE videos SET title='#{title}', description='#{description}', url='#{url}' WHERE id = #{self.id}"
    end
    conn.exec(sql)
  end

  def self.destroy(id)
    conn = VideoPost.open_connection
    sql = "DELETE FROM videos WHERE id = #{id}"
    conn.exec(sql)
  end
  
  def sanitize(param)
   array =  param.split(//)
   b = "''"
   # array.select {|char| char == "'"}
   array.map!{ |x| x == "'" ? b : x }
   array.join
  end

end