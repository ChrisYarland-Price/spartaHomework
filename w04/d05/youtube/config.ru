require 'sinatra'
require 'pg'
require 'sinatra/reloader' if development?
require_relative './models/video.rb'
require_relative './controllers/videos_controller.rb'

use Rack::Reloader

use Rack::MethodOverride

run VideosController