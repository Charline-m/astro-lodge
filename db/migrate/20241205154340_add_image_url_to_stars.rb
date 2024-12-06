class AddImageUrlToStars < ActiveRecord::Migration[7.1]
  def change
    add_column :stars, :image_url, :string
  end
end
