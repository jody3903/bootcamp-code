class AddFieldsToAlbums < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :name, :string
    add_column :albums, :artist_name, :string
  end
end
