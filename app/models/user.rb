class User < ApplicationRecord
  validates_confirmation_of :password

  attr_accessor :password_confirmation

  def admin?
    is_admin
  end
end
