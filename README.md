# gBizINFO Ruby Client

[![CI](https://github.com/ryoma123/gbizinfo-ruby/actions/workflows/ci.yml/badge.svg)](https://github.com/ryoma123/gbizinfo-ruby/actions/workflows/ci.yml)

A Ruby client for gBizINFO APIs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gbizinfo-ruby'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install gbizinfo-ruby

## Usage

```ruby
client = Gbizinfo::Client.new(
  token: 'xxxxxxxxxx'
)

# Search for a corporation
options = { name: '経済産業省' }
client.hojin_search(options)

# Fetch corporate information
client.hojin(corporate_number: '4000012090001')
```

### Global Settings

The following global settings are supported via `Gbizinfo.configure`.

setting             | description
--------------------|-------------------------------------------------------------------------------------------------
token               | gBizINFO API token.
user_agent          | User-agent.
endpoint            | gBizINFO API endpoint.
adapter             | Optional HTTP adapter to use, defaults to `Faraday.default_adapter`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ryoma123/gbizinfo-ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
