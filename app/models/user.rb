class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :orders
  has_many :records
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:discogs]

  # after_create :send_welcome_email



  # def send_welcome_email
  #   UserMailer.welcome(self).deliver_now
  # end




end
