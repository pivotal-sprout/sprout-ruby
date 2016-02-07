file "#{node['sprout']['home']}/.gemrc" do
  owner node['sprout']['user']
  mode '0644'
  action :create
  content "install: --no-rdoc --no-ri\nupdate: --no-rdoc --no-ri\n"
end
