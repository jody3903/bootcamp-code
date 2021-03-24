class AlbumsController < ApplicationController
    def index
      @albums = Album.all  #array-like object
    end

    def show
      album_id = params[:id]
      @album = Album.where(id: album_id).first
    end

    def create
      name = params[:album][:name]
      artist_name = params[:album][:artist_name]
      
      Album.create(name: name, artist_name: artist_name)

    end

    def destroy
      album_id = params[:id]
      @album = Album.where(id: album_id).first
      
      @album.destroy
      redirect_to :albums
    end
 
  end