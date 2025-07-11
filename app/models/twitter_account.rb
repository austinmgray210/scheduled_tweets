class TwitterAccount < ApplicationRecord
  has_many :tweet
  belongs_to :user

  validates :username, uniqueness: true
end
