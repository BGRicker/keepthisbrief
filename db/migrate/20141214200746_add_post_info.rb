class AddPostInfo < ActiveRecord::Migration
  def change
    add_column :posts, :name, :string
    add_column :posts, :review, :string
  end
end
