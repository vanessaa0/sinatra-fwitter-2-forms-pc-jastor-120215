require_relative '../../config/environment'
require './app/models/tweet'

class ApplicationController < Sinatra::Application

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

end