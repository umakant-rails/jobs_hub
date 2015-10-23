class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates :email, presence: true, on: :create
  validates :username, presence: true, uniqueness: true
  validates :password, length: {minimum: 8, maximum: 20}, presence: true, on: :create
  validates :password, length: {minimum: 8, maximum: 20}, on: :update, allow_blank: true
  
end
