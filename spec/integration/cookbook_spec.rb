require 'spec_helper'

describe 'sprout-ruby' do
  before :all do
    expect(File).not_to be_exists('/etc/gemrc')
  end

  it 'converges without errors' do
    expect(system('soloist')).to be_true
  end

  it 'creates a global gemrc' do
    expect(File).to be_exists('/etc/gemrc')
  end

  it 'prevents `sudo gem`' do
    plugin_path = "#{ENV['HOME']}/.bash_it/custom/gem_setup-warn_on_sudo.bash")
    expect(File).to be_exists(plugin_path)
    expect(File.read(plugin_path).to match(/Unalias gem at your own risk/)
  end
end
