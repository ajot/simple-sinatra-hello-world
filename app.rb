require 'sinatra'

# disable the new HostAuthorization middleware entirely
# set :host_authorization, { permitted_hosts: [] }
set :host_authorization, { permitted_hosts: [ ENV.fetch('APP_DOMAIN'), 'localhost' ] }

set :port, ENV.fetch('PORT', 8080)
set :bind, '0.0.0.0'

get '/' do
  'Hello, world!'
end 