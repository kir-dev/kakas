class RenamePhotosToPosters < ActiveRecord::Migration[5.2]
  def change
    rename_table :photos, :posters
  end
end
