require 'unit/spec_helper'

describe 'sprout-ruby::gemrc' do
  let(:runner) { ChefSpec::SoloRunner.new }

  it 'configures rubygems to skip RI and RDOC for the current user' do
    runner.converge(described_recipe)

    expect(runner).to render_file('/home/fauxhai/.gemrc').with_content(/install: --no-rdoc --no-ri/)
    expect(runner).to render_file('/home/fauxhai/.gemrc').with_content(/update: --no-rdoc --no-ri/)
  end
end
