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

execute "bundle install" do
  command "cd /home/zakuni/bot; bundle install --path ~/.gem"
end

cron "zakuni.rb" do
  minute "*/3"
  user "zakuni"
  path "/opt/rbenv/shims:/opt/rbenv/bin:/opt/rbenv/plugins/ruby_build/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
  command "cd /home/zakuni/bot; bundle exec ruby zakuni.rb"
end