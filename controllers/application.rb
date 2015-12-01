# define the starting point for my Application
# this used to be app.rb
# however, app.rb became muddy with too much stuff going on
# now we're going to give controllers a chance
# to organize our code

class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require

  ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :database => 'chicago_places'
  )

  not_found do
    erb :not_found
  end

  # i need to specify views folder
  set :views, File.expand_path('../../views', __FILE__)


end
