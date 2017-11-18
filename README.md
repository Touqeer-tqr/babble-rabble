# README

Rails 5 ChatApp

Requirements:

* rails 5

* ruby > 2.3.0

* postres

* puma

* redis

If postres role 'user_name' does not exits, run this command and enter user_name

* `sudo -u postgres createuser --interactive`

How to create Chatapp in Rails 5:

* `rails new app_name --database=postgresql`

* `bundle install`

* `rake db:create; rake db:migrate`