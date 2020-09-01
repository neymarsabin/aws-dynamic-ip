# AWS Dynamic IP Address 


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'aws-dynamic-ip'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install aws-dynamic-ip

## Usage

Requirements for the gem: 
* Environment Variables
  * AWS_REGION
  * aws secret access keys setup to environment variables
  * Assigned tags with key *role* and *env* in every ec2 instances
	  
Using the gem: 
	Wherever you need Ip's of running instances: 

	require 'amazon_web/dynamic/ip'
	require 'aws-sdk-ec2'

	Aws::Dynamic::IP.fetch_ips(env, role)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/neymarsabin/aws-dynamic-ip. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Aws::Dynamic::Ip project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/neymarsabin/aws-dynamic-ip/blob/master/CODE_OF_CONDUCT.md).
