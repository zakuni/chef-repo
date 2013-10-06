#
# Cookbook Name:: site
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "/home/zakuni/ozawakun.io" do
  repository "git@github.com:zakuni/ozawakun.io.git"
  reference "master"
  action :sync
end

execute "bundle install" do
  command "cd /home/zakuni/ozawakun.io; bundle install --path ~/.gem"
end

execute "build" do
  command "cd /home/zakuni/ozawakun.io; bundle exec middleman build"
end