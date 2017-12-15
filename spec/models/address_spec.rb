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

require 'rails_helper'

RSpec.describe Address, type: :model do
end
