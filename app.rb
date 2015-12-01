require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'chicago_places'
)

get '/' do
  Place.all.to_json
end
