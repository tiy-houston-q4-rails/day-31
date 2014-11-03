class AddCategoryIdToSweet < ActiveRecord::Migration
  def change
    add_column :sweets, :category_id, :integer
  end
end
