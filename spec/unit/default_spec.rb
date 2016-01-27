require 'unit/spec_helper'

describe 'sprout-ruby::default' do
  let(:runner) { ChefSpec::SoloRunner.new }

  it 'includes all other recipes' do
    runner.converge(described_recipe)
    expect(runner).to include_recipe('sprout-ruby::no_sudo_gem')
    expect(runner).to include_recipe('sprout-ruby::gemrc')
  end
end
