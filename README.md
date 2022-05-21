# Rails + Rspec + Spring = easy re-run for failed specs.

Before you read this a little question - how do you re-run specs if you are using rails+spring+rspec? This is for you!

Tired of adding "bin/" to "rspec" command for failed specs? Here is a simple solution.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spring_rspec_commands_addon', group: :test
```

And then execute:

    $ bundle

Ruby 2+ is required.

You need to have in Gemfile:

```
group :development do
  gem 'spring-commands-rspec'
  gem "spring"
  gem 'spring-watcher-listen'
end
```

Plus don't forget to `bundle exec spring binstub --all`.

## Sample

[![Sample](https://github.com/igorkasyanchuk/spring_rspec_commands_addon/raw/master/docs/spring.png)](https://github.com/igorkasyanchuk/spring_rspec_commands_addon/raw/master/docs/spring.png)

## Usage

After adding a gem you will get a more user friendly output in console:

`bin/rspec ./spec/models/user_spec.rb` intead of `rspec ./spec/models/user_spec.rb`.

So you can copy-paste and executre spec with Spring easily.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/spring_rspec_commands_addon.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

[<img src="https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/more_gems.png?raw=true"
/>](https://www.railsjazz.com/?utm_source=github&utm_medium=bottom&utm_campaign=spring_rspec_commands_addon)
