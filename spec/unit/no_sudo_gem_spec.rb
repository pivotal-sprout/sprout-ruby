require 'unit/spec_helper'

describe 'sprout-ruby::no_sudo_gem' do
  let(:runner) { ChefSpec::Runner.new }

  it 'creates the "gem_setup-warn_on_sudo.bash" plugin' do
    runner.converge(described_recipe)
    expect(runner).to create_bash_it_custom_plugin('gem_setup-warn_on_sudo.bash')
  end
end
