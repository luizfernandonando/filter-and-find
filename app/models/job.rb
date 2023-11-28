class Job < ApplicationRecord
  belongs_to :company
  validates :position, :description, :requirement, :contact_company, presence: true
  has_many :job_skills
  has_many :skills, through: :job_skills
  has_many :matches
end
