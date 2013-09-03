#
# Cookbook Name:: bot
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "/home/zakuni/bot" do
  repository "git@bitbucket.org:zakuni/bot.git"
  reference "master"
  action :sync
end

cron "zakuni.rb" do
  minute "*/3"
  user "zakuni"
  path "/opt/rbenv/shims"
  command "ruby /home/zakuni/bot/zakuni.rb"
end