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

execute "allow_ssh" do
  command "ufw allow #{node.ssh.port}"
  notifies :run, "execute[enable]"
end

execute "allow_http" do
  command "ufw allow #{node.http.port}"
  notifies :run, "execute[enable]"
end