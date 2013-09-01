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

cron "rain-mail" do
  hour "19"
  user "zakuni"
  command "/opt/rbenv/shims/ruby /home/zakuni/rain-mail/lib/rain_mail.rb"
end

template "config.yaml" do
  path "/home/zakuni/rain-mail/lib/config.yaml"
  source "config.yaml.erb"
  owner "root"
  group "root"
  mode 0644
end