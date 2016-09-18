# README

This README would normally document whatever steps are necessary to get the
application *Thalia* up and running.

## Installation

#### Things you may need to install on your local environment:

* Ruby version

> 2.3.1

* Ruby on Rails version

> 5.0.0

## Running

* The only thing you need to do, is to run the following command:

```
cd Thalia
bin/rails s
```

* If you are using Vagrant (like me) and you want to port forwarding (port 3000) *Thalia* from guest to host, even if you did in Vagrantfile, you would have to run the following command:

```
cd Thalia
bin/rails s -b 0.0.0.0   # Now you bind server to 0.0.0.0 and all interfaces have access
```

* Also, if you want to use rails s instead of rails s -b 0.0.0.0, you can edit /config/boot.rb:

```
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
require 'bundler/setup' if File.exist?(ENV['BUNDLE_GEMFILE'])
require 'rails/commands/server'

module Rails
  Class Server
    alias :default_options_alias :default_options
    def default_options
      default_options_alias.merge!(:Host => '0.0.0.0')
    end
  end
end
```




