class JobSkill < ApplicationRecord
  belongs_to :job
  belongs_to :skill
  validates :job_id, :skill_id, presence: true
  validates_uniqueness_of :job_id, scope: :skill_id
end
