class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill
  validates :skill_id, :user_id, presence: true
  validates_uniqueness_of :user_id, scope: :skill_id
end
