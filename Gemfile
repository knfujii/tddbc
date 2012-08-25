# A sample Gemfile
source "https://rubygems.org"

# gem "rails"

group :development do
  # irb拡張
  gem 'wirble'
end

group :development, :test do
  # RSpec
  gem 'rspec', '>= 2.0.0.beta.22'
  gem 'fuubar' # RSpecフォーマッター
  gem 'capybara'
  gem 'launchy'

  # カバレッジ
  gem 'simplecov', :require => false

  # 自動テスト＆高速化
  gem 'spork', '~> 0.9.0.rc'
  gem 'rb-fsevent'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'growl'
  gem 'libnotify'
end
