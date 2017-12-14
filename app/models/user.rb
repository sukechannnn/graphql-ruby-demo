# == Schema Information
#
# Table name: users
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string           not null
#  email      :string           not null
#

class User < ApplicationRecord
  has_one :address
  has_many :posts
  has_many :comments
end
