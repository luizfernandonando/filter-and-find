# app/models/user.rb
class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :email, :password, presence: true


  has_many :reviews
  has_many :user_skills
  has_many :skills, through: :user_skills
  has_many :matches

  has_many :favorite_jobs, through: :matches, source: :job

  validates :full_name, presence: true
end
