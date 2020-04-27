class Post < ApplicationRecord
  belongs_to :user
  has_many :coments

  validates :content, presence: true, length: { minimum: 5 }
end
