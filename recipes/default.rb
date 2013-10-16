#
# Cookbook Name:: chef-pry
# Recipe:: default
#

node.set['build_essential']['compiletime'] = true
node.set['xml']['compiletime'] = true

include_recipe 'build-essential::default'
include_recipe 'xml::default'

%w{pry pry-debugger}.each do |gem|
  chef_gem gem
end
