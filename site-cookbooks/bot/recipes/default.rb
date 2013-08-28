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
  command "ruby /zakuni/home/bot/zakuni.rb"
end