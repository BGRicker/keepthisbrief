class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :likes

  validates :name, :review, presence: true
  validates :name, length: { in: 5..35 }
  validates :review, length: { in: 20..140 }

end
