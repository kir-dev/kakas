class RenameUrlToImageInPosters < ActiveRecord::Migration[5.2]
  def change
    rename_column :posters, :url, :image
  end
end
