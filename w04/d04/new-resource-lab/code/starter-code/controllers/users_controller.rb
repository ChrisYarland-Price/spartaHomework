class UsersController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
      register Sinatra::Reloader
  end

  $users = [{
      id: 0,
      email: "bob@gmail.com",
      first_name: "Chris",
      last_name: "Yarland",
      age: 24
  },
  {
      id: 1,
      email: "bo@gmail.com",
      first_name: "bob",
      last_name: "price",
      age: 12
  },
  {
      id: 2,
      email: "bob@go.com",
      first_name: "Robert",
      last_name: "Yarland",
      age: 89
  }
  ];

  get '/users' do

      @users = $users
  
      erb :'users/index'
  
  end

  get '/users/new'  do
    @user = {
      id: "",
      first_name: '',
      last_name: '',
      age: ''
    }
    erb :'users/new'
    
  end
    
  get '/users/:id' do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single post object available in the template
    @user = $users[id]
    
    erb :'users/show'
    
  end
    
  post '/users/' do
    # Creating a new user from the user imput 
    new_post = {
      id: $users[$users.length - 1][:id] + 1,
      email: params[:email],
      first_name: params[:first],
      last_name: params[:surname],
      age: params[:age]
    }
    # adding 
    $users.push new_post

    redirect "/users"
    
  end
    
  put '/users/:id'  do
    
    # data is gathered in the params object
    id = params[:id].to_i
      
    # get the post object from our data store
    user = $users[id];
      
    # update the values of the object with data from the request
    user[:first_name] = params[:first];
    user[:email] = params[:email];
    user[:age] = params[:age];
    user[:last_name] = params[:surname]

      
    # save the user back to our data store ( at the spot it came from this time )
    $users[id] = user;
      
    # redirect the user to a GET route. We'll go back to the INDEX.
    redirect "/users";
    
  end
    
  delete '/users/:id'  do
    
    # get the ID
    id = params[:id].to_i

    # delete the user from the array
    $users.select! { |user| user[:id] != id }
    # redirect back to the homepage
    redirect "/users"
    
  end
    
  get '/users/:id/edit'  do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single post object available in the template
    @user = $users[id]

    erb :'users/edit'
    
  end

end