# == Schema Information
#
# Table name: posts
#
#  id         :uuid             not null, primary key
#  user_id    :uuid             not null
#  subject    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
end
