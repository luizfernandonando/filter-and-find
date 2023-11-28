class Match < ApplicationRecord
  validades :user_id, :company_id, presence: true
  belongs_to :user
  belongs_to :job
end
