require 'sinatra/base'

# ApplicationController should always be loaded FIRST
require './controllers/application'
# Then require all the things!
require './controllers/recommendations'
require './models/place'

map('/') { run RecommendationsController }
#map('/usrs') { run UserController }
