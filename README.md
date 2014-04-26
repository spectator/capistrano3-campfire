Capistrano3::Campfire
=====================

Simple Campfire notifications for Capistrano 3

Installation
------------

Add this line to your application's Gemfile:

```ruby
gem 'capistrano3-campfire', group: :development
```

And then execute:

```shell
$ bundle
```

Add this line to your application's Capfile:

```ruby
require 'capistrano3/campfire'
```

Usage
-----

Add this line to your `deploy.rb` file:

```ruby
after :publishing, 'campfire:deploy'
```

or at any other point on your choice.

Configure Campfire access:

```ruby
set :campfire_subdomain, 'subdomain'
set :campfire_token,     'token'
set :campfire_room_id,   123
```

You can change default message as a whole:

```ruby
set :campfire_message, -> { 'your message' }
```

or by setting these variables

```ruby
set :campfire_user, 'me'
set :campfire_sha, fetch(:branch)
set :campfire_env, fetch(:stage)
```

Contributing
------------

1. Fork it ( https://github.com/spectator/capistrano3-campfire/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
