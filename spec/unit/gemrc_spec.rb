require 'unit/spec_helper'

describe 'sprout-ruby::gemrc' do
  let(:runner) { ChefSpec::SoloRunner.new }

  it 'configures rubygems to skip RI and RDOC, globally and for the current user' do
    runner.converge(described_recipe)

    expect(runner).to render_file('/etc/gemrc').with_content(/install: --no-rdoc --no-ri/)
    expect(runner).to render_file('/etc/gemrc').with_content(/update: --no-rdoc --no-ri/)

    expect(runner).to create_link('/home/fauxhai/.gemrc').with(to: '/etc/gemrc')
  end
end
