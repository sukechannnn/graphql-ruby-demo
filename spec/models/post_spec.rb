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

require 'rails_helper'

RSpec.describe Post, type: :model do
end
