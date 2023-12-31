class Job < ApplicationRecord
  belongs_to :company
  validates :position, :description, :requirements, :contact_company, presence: true
  has_many :job_skills, dependent: :destroy
  has_many :skills, through: :job_skills
  has_many :matches, dependent: :destroy
end
