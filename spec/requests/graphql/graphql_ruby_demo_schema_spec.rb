require 'rails_helper'

RSpec.describe 'GraphqlRubyDemoSchema' do
  let(:current_definition) { GraphqlRubyDemoSchema.to_definition }
  let(:printout_definition) { File.read(Rails.root.join('schema.graphql')) }

  it 'equals dumped schema, `rake graphql:schema:dump` please!' do
    expect(current_definition).to eq(printout_definition)
  end
end
