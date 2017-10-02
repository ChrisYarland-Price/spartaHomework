class VideosController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
      register Sinatra::Reloader
  end

  get '/' do

      @title = "Blog videos"
      @header = "Welcome to the homepage"

      @videos = VideoPost.all
  
      erb :'videos/index'
  
  end

  get '/new'  do

    # create an empty video
    @video = VideoPost.new

    erb :'videos/new'
    
  end
    
  get '/:id' do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single video object available in the template
    @video = VideoPost.find(id)
    
    erb :'videos/show'
    
  end
    
  post '/' do
    
    video = VideoPost.new
    video.title = params[:title]
    video.description = params[:description]
    video.url = params[:url]

    video.save

    redirect "/"
    
  end
    
  put '/:id'  do
    
    # data is gathered in the params object
    id = params[:id].to_i
      
    # get the video object from our data store
    video = VideoPost.find(id)
      
    # update the values of the object with data from the request
    video.title = params[:title]
    video.description = params[:description]
    video.url = params[:url]
      
    # save the video back to our data store ( at the spot it came from this time )
    video.save
      
    # redirect the user to a GET route. We'll go back to the INDEX.
    redirect "/"
    
  end
    
  delete '/:id'  do
    
    # get the ID
    id = params[:id].to_i
    # delete the video from the array
    VideoPost.destroy(id)

    # redirect back to the homepage
    redirect "/"
    
  end
    
  get '/:id/edit'  do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single video object available in the template
    @video = VideoPost.find(id)

    erb :'videos/edit'
    
  end

end