class Review < ApplicationRecord
  validades :content, :rating, :user_id, :company_id, presence: true
  belongs_to :user

end
