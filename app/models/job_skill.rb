class JobSkill < ApplicationRecord
  belongs_to :job
  belongs_to :skill
  validades :job_id, :skill_id, presence: true
end
