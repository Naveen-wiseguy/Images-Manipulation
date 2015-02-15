class AddAspectRatioToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :maintain_aspect_ratio, :boolean
  end
end
