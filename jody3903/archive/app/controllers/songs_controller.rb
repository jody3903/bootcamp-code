class SongsController < ApplicationController

    def create
        name = params[:song][:name]
        album_id = params[:song][:album_id]
        Song.create(name: name, album_id: album_id)
        render plain: "added"
    
      end

    # private

    # def load_album
      
    #   @album = Album.find_by(id: album_id)
    # end
end
