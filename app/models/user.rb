class User < ApplicationRecord
  belongs_to :organization, optional: true
  accepts_nested_attributes_for :organization
  has_many :meetings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
