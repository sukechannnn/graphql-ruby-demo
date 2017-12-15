require 'rails_helper'

RSpec.describe 'user query', type: :request do
  subject { post graphql_path, params: { query: query } }

  let!(:user) { FactoryBot.create(:user) }

  let(:query) do
    <<~QUERY
      {
        user {
          id
          email
          name
        }
      }
    QUERY
  end

  it 'response body is User data' do
    subject
    json = JSON.parse(response.body, symbolize_names: true)
    expect(json[:data][:user][:id]).to eq user.id
    expect(json[:data][:user][:email]).to eq user.email
    expect(json[:data][:user][:name]).to eq user.name
  end
end
