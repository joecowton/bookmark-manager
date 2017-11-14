require 'sinatra/base'
require_relative 'models/link.rb'

class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    Link.create(url: params[:URL], title: params[:Title])
    redirect '/links'
  end

 run! if app_file == $0
end
