class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  has_many :stocks, dependent: :destroy
  has_many :transactions, through: :stocks, dependent: :destroy       

  after_create :send_admin_mail
  def send_admin_mail
    UserMailer.send_welcome_email(self).deliver
  end
end
