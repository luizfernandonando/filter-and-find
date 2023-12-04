class Review < ApplicationRecord
  belongs_to :user
  belongs_to :company
  validates :content, :user_id, :company_id, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }

end
