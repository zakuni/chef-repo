#
# Cookbook Name:: ufw
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "enable" do
  command "yes | ufw enable"
  action :nothing
end

execute "allow" do
  command "ufw allow ssh"
  notifies :run, "execute[enable]"
end