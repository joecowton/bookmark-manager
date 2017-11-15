ENV["RACK_ENV"] ||= "development"
require 'sinatra/base'
require_relative './data_mapper_setup'


class BookmarkManager < Sinatra::Base
  get '/' do
    redirect 'links'
  end

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

  get '/tags/:tag' do
    @tag = params[:tag]
    @filtered_links = Tag.first(name: @tag).links
    erb :'links/links_by_tag'
  end

  get '/links/add_tag' do
    erb :'links/add_tag'
  end

  post '/links/add_tag' do
    @link = Link.first(title: params[:Link])
    @tag = Tag.first_or_create(name: params[:Tag])
    @link.tags << @tag
    @link.save
    erb :'links/tag_added'
  end

 run! if app_file == $0
end
