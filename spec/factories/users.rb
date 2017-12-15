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

FactoryBot.define do
  factory :user do
    name '花太郎'
    email 'hanatarou@mail.com'
  end
end
