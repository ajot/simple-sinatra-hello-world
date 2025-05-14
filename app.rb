require 'sinatra'

set :protection, except: :host_authorization
set :port, ENV.fetch('PORT', 8080)
set :bind, '0.0.0.0'

get '/' do
  'Hello, world!'
end 