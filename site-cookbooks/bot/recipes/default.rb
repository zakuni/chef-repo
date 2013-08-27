#
# Cookbook Name:: bot
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "zakuni.rb" do
  repository "git@bitbucket.org:zakuni/bot.git"
  reference "master"
  action :sync
end