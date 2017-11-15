ENV["RACK_ENV"] ||= "development"
require 'sinatra/base'
require_relative './data_mapper_setup'


class BookmarkManager < Sinatra::Base
  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    link = Link.new(url: params[:URL], title: params[:Title])
    tag = Tag.first_or_create(name: params[:Tag])
    link.tags << tag
    link.save
    redirect '/links'
  end

 run! if app_file == $0
end
