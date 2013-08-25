#
# Cookbook Name:: ssh
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template "ssh_config" do
  path "/etc/ssh/ssh_config"
  source "ssh_config.erb"
  owner "root"
  group "root"
  mode 0644
end