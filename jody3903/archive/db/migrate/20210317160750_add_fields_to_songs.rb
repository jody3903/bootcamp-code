class AddFieldsToSongs < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :name, :string
    add_column :songs, :album_id, :integer
  end
end
