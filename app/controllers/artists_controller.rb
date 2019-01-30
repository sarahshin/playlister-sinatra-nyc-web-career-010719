class ArtistsController < ApplicationController

  get '/artists' do
    @artists = Artist.all
    erb :artist_index
  end

  get '/artists/new' do
    @artist = Artist.create(params)
    redirect "/artists/#{@artist.id}"
  end

  get '/artists/:slug' do
    # binding.pry
    @artist = Artist.find_by_slug(params["slug"])
    # binding.pry
    erb :artist_show
  end

end
