require 'pry'
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end
<<<<<<< HEAD

    
  get '/articles' do
    @articles=Article.all
    erb :index
  end

=======
  
>>>>>>> f548a9a57799cc6e492a2faa6c4a98bc18490d6c
  get '/articles/new' do
    erb :new
  end

  post '/articles' do
<<<<<<< HEAD
    @article=Article.create(params)
    redirect to "/articles/#{@article.id}"
  end

  get '/articles/:id' do
    @article=Article.find(params[:id])
    erb :show
  end

  get '/articles/:id/edit' do
    @article=Article.find(params[:id])
    erb :edit
  end

  patch '/articles/:id' do
    @article=Article.find(params[:id])
    @arti={title:params[:title],content:params[:content]}
    @article.update(@arti)
    redirect to "/articles/#{@article.id}"
  end

  delete '/articles/:id' do
    @article=Article.find(params[:id])
    @article.delete
    redirect to "/articles"
  end

=======
    @article=Article.new(params)
    # @articles=Article.all
    # redirect to('/articles/params[:id]')
    erb :show
  end

  
  get '/articles' do
    erb :index
  end
  
  get '/articles/:id' do
    @article=@articles.find_by(id==params[:id])
    erb :show
  end
  
>>>>>>> f548a9a57799cc6e492a2faa6c4a98bc18490d6c
end
