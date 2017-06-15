class User < ApplicationRecord
  validates :name, :password, :login, presence: true  
end
