class CategoryFields < ActiveRecord::Migration
  def change
    add_column(:categories, :name, :string)
    add_column(:categories, :slug, :string)
  end
end
