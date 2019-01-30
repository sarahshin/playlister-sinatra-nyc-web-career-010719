class GenresController < ApplicationController

  get '/genres' do
    @genres = Genre.all
    erb :genre_index
  end

  get '/genres/new' do
    @genre = Genre.create(params)
    redirect "/genres/#{@genre.id}"
  end

  get '/genres/:slug' do
    # binding.pry
    @genre = Genre.find_by_slug(params["slug"])
    # binding.pry
    erb :genre_show
  end

end
