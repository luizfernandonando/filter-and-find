class JobSkill < ApplicationRecord
  belongs_to :job
  belongs_to :skill
  validates :job_id, :skill_id, presence: true
end
