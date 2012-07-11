# HetznerConfigurable

The standard 'configurable' pattern whereby a configuration can be
specified to a class in an initializer (in rails)

## Installation

Add this line to your application's Gemfile:

    gem 'hetzner_configurable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hetzner_configurable

## Usage

Include the HetznerConfigurable::Configurable class in your class definition
eg:
  class MyClass
    include HetznerConfigurable::Configurable
    
    ...
  end

## Note

This gem, when mixed into your class, tries to create a @@config class variable
and an @config instance variable. If your class already specifies something
like that, you're going to have a bad time.
