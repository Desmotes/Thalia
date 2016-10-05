# README

This README would normally document whatever steps are necessary to get the
application *Thalia* up and running.

## Installation

#### Things you may need to install on your local environment:

* Ruby version

> 2.3.1

* Ruby on Rails version

> 5.0.0

## Setup environment 

All additional changes and information can be found at Thalia's [Wiki](https://github.com/Desmotes/Thalia/wiki).

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


## Web App Screenshots

#### Welcome Page

![screen shot 2016-10-01 at 02 32 36](https://cloud.githubusercontent.com/assets/11991105/19009733/62d1f4d8-877f-11e6-8d08-f7dd67209010.png)

#### Dashboard Page

![screen shot 2016-10-05 at 03 08 10](https://cloud.githubusercontent.com/assets/11991105/19096897/fc3244b2-8aa8-11e6-9481-db252f2b721f.png)



