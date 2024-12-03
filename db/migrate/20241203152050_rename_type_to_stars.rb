class RenameTypeToStars < ActiveRecord::Migration[7.1]
  def change
    rename_column :stars, :type, :category
  end
end
