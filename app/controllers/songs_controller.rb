class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :song_index
  end

  get '/songs/new' do
    @song = Song.create(params)
    redirect "/songs/#{@song.id}"
  end

  get '/songs/:slug' do
    # binding.pry
    @song = Song.find_by_slug(params["slug"])
    # binding.pry
    erb :song_show
  end

end
