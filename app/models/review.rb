class Review < ApplicationRecord
  validates :content, :rating, :user_id, :company_id, presence: true
  belongs_to :user
  belongs_to :company

end
