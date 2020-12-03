require 'redis'
require 'sinatra/base'
require './configuration'

class App < Sinatra::Application
  use Configuration

  before do
    @redis = Redis.new(host: "redis", port: 6379, db: 1)
  end

  get '/' do
    Loga.logger.info('Hello App 2')
    return 'Hello, World!'
  end

  get '/visitor' do
    @redis.incr('visitor')
    visitor_num = @redis.get('visitor')
    Loga.logger.info("Visitor: #{visitor_num} in App 2")
    return "Visitor: #{visitor_num}"
  end

  get '/visitor/reset' do
    @redis.set('visitor', 0)
    visitor_num = @redis.get('visitor')
    Loga.logger.info('Reset visitor number in App 2')
    return "Visitor is reset to #{visitor_num}"
  end
end
