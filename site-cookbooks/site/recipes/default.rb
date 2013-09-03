#
# Cookbook Name:: site
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
directory "/home/zakuni/ozawakun.io" do
  owner "root"
  group "root"
  recursive true
end

template "index.html" do
  path "/home/zakuni/ozawakun.io/index.html"
  source "index.html.erb"
  owner "root"
  group "root"
  mode 0644
end