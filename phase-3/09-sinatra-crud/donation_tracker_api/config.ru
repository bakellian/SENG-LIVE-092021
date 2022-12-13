require_relative "./config/environment"

#Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
    allow do
      origins '*'
      resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
    end
end

#some middlewear to allow a json body to get parsed. Send a body in JSON format and have it bereadablein the controller
use Rack::JSONBodyParser


#these lines below tell sinatra that they have routes in them that will need to be responded to
run ApplicationController 
use OrganizationsController
use DonationsController