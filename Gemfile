source 'http://ruby.taobao.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'

gem 'bootstrap-sass', '3.2.0'
gem 'bootstrap-will_paginate', '0.0.9'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

gem 'devise', '3.2.2'

# 表单
gem 'simple_form'


# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'


# admin
gem 'rails_admin'
gem 'will_paginate', '~> 3.0'
gem 'cancan' 
gem 'paper_trail', '~> 3.0.1'

# message

gem "rack-cache"

# redis 
gem 'redis-rails'

# 消息队列系统
gem 'sidekiq'

# Mongoid 辅助插件
gem "mongoid", "4.0.0"
# gem 'mongoid_auto_increment_id', "0.6.2"
gem 'mongoid_rails_migrations', '1.0.0'
gem 'bson_ext'

# 七牛
gem 'qiniu', '~> 6.2.1'

#  JavaScript runtime.
gem 'therubyracer'

#  tags
gem 'acts-as-taggable-on'

#   like
gem 'acts_as_votable', '~> 0.8.0'

# File upload
gem "paperclip",  :git => "git://github.com/thoughtbot/paperclip.git"
gem 'cocaine', '~> 0.5.3'
gem 'mime-types'


gem "cancan"

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', 

gem 'psych'

group :production do

  # Use the Unicorn app server
  gem 'unicorn'
  gem 'mysql2', '0.3.15'


end 
# group :production do
#   gem 'pg', '0.17.1'
# end 

group :development do
  gem 'logger'


  gem 'capistrano', '~> 3.1.0'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-rvm', '~> 0.1.0'
  gem 'capistrano-bundler', '~> 1.1.2'
  gem 'capistrano-safe-deploy-to', '~> 1.1'
  gem 'capistrano-unicorn-nginx', '~> 2.0'  
  gem 'capistrano-sidekiq'

end 
