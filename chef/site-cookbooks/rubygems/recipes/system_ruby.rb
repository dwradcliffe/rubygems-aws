#
# Cookbook Name:: rubygems
# Recipe:: system_ruby
#

package "ruby1.9.1-full"

execute "gem update --system #{node['rubygems']['rubygems_version']}" do
  action :run
  environment 'REALLY_GEM_UPDATE_SYSTEM' => 'true'
  not_if "gem -v | grep -q '#{node['rubygems']['rubygems_version']}'"
end
