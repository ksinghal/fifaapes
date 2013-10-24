class RegisteredPlayer < ActiveRecord::Base
  validates :name, :email, presence: true
  attr_accessible :name, :email
end
