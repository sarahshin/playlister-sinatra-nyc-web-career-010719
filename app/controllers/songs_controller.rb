class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :song_index
  end

  get '/songs/new' do
    @song = Song.create(params)
    # @artist = Artist.create(params[:artist])
    if !Artist.all.include?(@song.artist)
      Artist.create(@song.artist)
    end
    # binding.pry
    erb :song_new

  end

  get '/songs/:slug' do
    # binding.pry
    @song = Song.find_by_slug(params["slug"])
    # binding.pry
    erb :song_show
  end

end
