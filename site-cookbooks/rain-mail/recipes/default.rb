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
  command "/opt/rbenv/shims/ruby /home/zakuni/bot/zakuni.rb"
end