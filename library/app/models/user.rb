class User < ApplicationRecord
  has_many :liberry_users, dependent: :destroy
  has_many :liberries, through: :liberry_users
  has_secure_password

  def self.confirm(params)
   @user = User.find_by({email: params[:email]})
   @user ? @user.authenticate(params[:password]) : false
 end
end
