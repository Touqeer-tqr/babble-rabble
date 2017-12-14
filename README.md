# README

Rails 5 ChatApp

Requirements:

* rails 5

* ruby > 2.3.0

* postres

* puma

* redis

* devise


If postres role 'user_name' does not exits, run this command and enter user_name

* `sudo -u postgres createuser --interactive`


To add username in devise:
  In `application_controller.rb` add:
  `before_action :configure_permitted_parameters, if: :devise_controller?`

  `protected`
    `def configure_permitted_parameters`
      `devise_parameter_sanitizer.permit(:sign_up, keys: [:username])`
    `end`
   
   In modal `user.rb` add:
   `validates :username, presence: true, uniqueness: true`

   Generate devise registration view and in `registrations/new.html.erb` add:
   `<div class="field">`
     `<%= f.label :username %><br />`
     `<%= f.text_field :username, autofocus: true %>`
   	`</div>`


How to create Chatapp in Rails 5:

* `rails new app_name --database=postgresql`

* `bundle install`

* `rake db:create; rake db:migrate`