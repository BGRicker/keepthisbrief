class Post < ActiveRecord::Base
  belongs_to :category
  validates :name, :review, presence: true
  validates :review, length: { maximum: 140, minimum: 50 }
  validates :name, length: { maximum: 80, minimum: 5 }

end
