# == Schema Information
#
# Table name: comments
#
#  id         :uuid             not null, primary key
#  user_id    :uuid             not null
#  post_id    :uuid             not null
#  detail     :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
end
