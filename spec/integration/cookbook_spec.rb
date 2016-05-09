require 'spec_helper'

describe 'sprout-ruby' do
  before :all do
    expect(File).not_to be_exists("#{ENV['HOME']}/.gemrc")
  end

  it 'converges without errors' do
    expect(system('soloist')).to eq(true)
  end

  it 'creates a local gemrc' do
    expect(File).to be_exists("#{ENV['HOME']}/.gemrc")
  end
end
