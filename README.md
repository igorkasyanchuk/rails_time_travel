# Rails Time Travel

![CI](https://github.com/igorkasyanchuk/rails_time_travel/workflows/MiniTest/badge.svg)

Time travel with timecop for your Rails development (and staring env for example).

Very often you need to create objects or other things in the "past". With thins gem and excellent `timecop` gem you can freeze time to any date/time.

For developers & QA's.

## Usage

Open `/rails/time_travel` to see

[<img src="https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/time_travel.png?raw=true"
/>](https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/time_travel.png?raw=true)

Now you can adjust the datetime. Once you are done - just reset time (you will see a red button).

Note, that this datetime change is related only to your session.

## Installation

Add this line to your application's Gemfile:

```ruby
group :development do
  gem 'rails_time_travel'
end
```

## Limitations

This approach has all limitation which timecop has. In addition it won't work on your background jobs or SQL's with `NOW()`, because this gem doesn't change system time and background job is a separate process.

## Contributing

* `BUNDLE_GEMFILE=gemfiles/rails_6_1.gemfile bundle exec rake test` to run for Rails 6.1
* `BUNDLE_GEMFILE=gemfiles/rails_6_0.gemfile bundle exec rake test` to run for Rails 6.0
* `BUNDLE_GEMFILE=gemfiles/rails_5_2.gemfile bundle exec rake test` to run for Rails 5.2

## TODO

- jump to a specific date time with datetime picker?
- CI for Rails 4.X

## Credits

https://stackoverflow.com/questions/32129741/can-you-use-timecop-gem-for-development-in-rails

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

