#
# Cookbook Name:: ssh
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template "/etc/ssh/ssh_config" do
  owner "root"
  group "root"
  mode '0644'
end
