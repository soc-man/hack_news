class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :submission
  validates :body, presence: :true
end
