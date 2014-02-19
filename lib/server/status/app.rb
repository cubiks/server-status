require 'sinatra/base'
require 'json'
require 'active_support/time'

class Status < Sinatra::Base

  configure :production, :development do
    enable :logging
  end

  get '/', :provides => 'json' do
    result = {}
    result[:message] = 'Hello world!'
    result[:timestamp] = Time.now
    result.to_json
  end

end