# app/models/user.rb
class User < ApplicationRecord
  has_one_attached :photo

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :email, :password, presence: true

  has_many :reviews, dependent: :destroy
  has_many :user_skills, dependent: :destroy
  has_many :skills, through: :user_skills
  has_many :matches, dependent: :destroy

  has_many :favorite_jobs, through: :matches, source: :job

  validates :full_name, presence: true
end
