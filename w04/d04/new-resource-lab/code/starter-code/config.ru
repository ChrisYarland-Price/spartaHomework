require 'sinatra'
require 'sinatra/reloader' if development?
require 'rack'
require_relative './controllers/posts_controller.rb'
require_relative './controllers/users_controller.rb'

use Rack::Reloader

use Rack::MethodOverride

use UsersController
 
run PostsController
