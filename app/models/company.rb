class Company < ApplicationRecord
  validates :name, :description, :sector, presence: true
  has_many :jobs
  has_many :reviews, dependent: :destroy
  has_many :users
end
