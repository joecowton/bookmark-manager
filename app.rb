require 'sinatra/base'
# require 'data_mapper'
# require 'dm-postgres-adapter'

# DataMapper::Logger.new($stdout, :debug)
# DataMapper.setup(:defualt, 'postgres://localhost/database_play')
#
# require './models/link'
#
# DataMapper.finalize
# DataMapper.auto_upgrade!
#
# @link = Link.create(name: 'Google', url: 'https://www.google.com')


class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  run! if app_file == $0
end
