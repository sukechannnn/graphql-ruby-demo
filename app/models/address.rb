# == Schema Information
#
# Table name: addresses
#
#  id          :uuid             not null, primary key
#  user_id     :uuid             not null
#  address     :string           not null
#  postal_code :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Address < ApplicationRecord
  belongs_to :user
end
