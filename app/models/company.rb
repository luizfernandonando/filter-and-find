class Company < ApplicationRecord
  validates :name, :description, :sector, presence: true
  has_many :jobs
  has_many :reviews
  has_many :users
end
