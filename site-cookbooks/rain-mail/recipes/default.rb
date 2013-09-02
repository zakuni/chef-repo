#
# Cookbook Name:: rain-mail
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "/home/zakuni/rain-mail" do
  repository "git@github.com:zakuni/rain-mail.git"
  reference "master"
  action :sync
end

execute "bundle install" do
  command "cd /home/zakuni/rain-mail; bundle install"
end

template "config.yaml" do
  path "/home/zakuni/rain-mail/lib/config.yaml"
  source "config.yaml.erb"
  owner "root"
  group "root"
  mode 0644
end

cron "rain-mail" do
  minute "0"
  hour "19"
  user "zakuni"
  command "cd /home/zakuni/rain-mail; bundle exec /opt/rbenv/shims/ruby lib/rain_mail.rb"
end