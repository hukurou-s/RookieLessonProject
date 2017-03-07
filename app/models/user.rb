# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  password   :string           not null
#  grade      :string           not null
#  snum       :string           not null
#  account    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  is_admin   :boolean          default("false")
#

class User < ApplicationRecord
  validates_confirmation_of :password
  validates :snum, uniqueness: true
  validates :account, uniqueness: true

  attr_accessor :password_confirmation

  def admin?
    is_admin
  end
end
