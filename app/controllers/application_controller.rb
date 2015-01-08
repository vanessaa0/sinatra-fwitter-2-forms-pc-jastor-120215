require_relative '../../config/environment'

class ApplicationController < Sinatra::Application

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

end