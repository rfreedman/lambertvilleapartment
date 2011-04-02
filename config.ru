require 'rack-rewrite'
require './lambertvilleapartment'

use Rack::Rewrite do
   rewrite '/', '/index.html'
end

not_found do
  @bad_path = request.path_info
  erb :'404'
end

run Sinatra::Application

