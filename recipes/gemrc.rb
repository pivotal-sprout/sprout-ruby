file "#{node['sprout']['home']}/.gemrc" do
  owner node['sprout']['user']
  mode '0644'
  action :create
  content "install: --no-document\nupdate: --no-document\n"
end
