# app/models/user.rb
class User < ApplicationRecord
  has_one_attached :photo
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :reviews
  has_many :user_skills
  has_many :skills, through: :user_skills
  has_many :matches
  has_many :favorite_jobs, through: :matches, source: :job

  validates :email, :password, presence: true
  validates :full_name, presence: true
end
