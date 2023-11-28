class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill
  validates :skill_id, :user_id, presence: true
end
