class ArtistsController < ApplicationController

  get '/artists' do
    binding.pry
    @artists = Artist.all
    binding.pry
    erb :artist_index
  end

  get '/artists/new' do
    @artist = Artist.create(params)
    redirect "/artists/#{@artist.id}"
  end

end
