require 'sinatra/base'
require 'loga'

class Configuration < Sinatra::Application
  use Loga::Rack::RequestId
  use Loga::Rack::Logger

  Loga.configure(
    format: :gelf,
    service_name: 'app-test'
  )

  configure do
    disable :logging
  end
end
