class AddRatingToReview < ActiveRecord::Migration
  def change
    add_column :posts, :rating, :integer
  end
end
