# Rails + Rspec + Spring = Love :)

Tired of adding "bin" to "rspec" command for failed specs? Here is a simple solution.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spring_rspec_commands_addon', group: :test
```

And then execute:

    $ bundle

Ruby 2+ is required.

## Usage

After adding a gem you will get a more user friendly output in console:

`bin/rspec ./spec/models/user_spec.rb` intead of `rspec ./spec/models/user_spec.rb`.

So you can copy-paste and executre spec with Spring easily.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/spring_rspec_commands_addon.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).