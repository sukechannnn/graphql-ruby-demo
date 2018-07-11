require 'rails_helper'

RSpec.describe 'GraphqlRubyDemoSchema' do
  let(:current_definition) { GraphqlRubyDemoSchema.to_definition }
  let(:printout_definition) { File.read(Rails.root.join('spec', 'graphql', 'schema.graphql')) }

  it 'equals dumped schema, `rake graphql:schema:dump` please!' do
    expect(current_definition).to eq(printout_definition)
  end

  it 'dumped schema equal to handwritten schema' do
    schema = GraphQL::Schema.from_definition(Rails.root.join('spec', 'graphql', 'schema.graphql').to_s).to_definition
    expect(schema).to eq(printout_definition)
  end
end
