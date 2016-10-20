class Liberry < ApplicationRecord
  has_many :liberry_users, dependent: :destroy
  has_many :users, through: :liberry_users
end
