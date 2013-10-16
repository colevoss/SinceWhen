# SinceWhen

Returns a string containing the amount of time since the date given with
varying scopes of specificy.

## Installation

Add this line to your application's Gemfile:

    gem 'since_when'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install since_when

## Usage

    SinceWhen::time_since( date, :scope )
    
Scope can be any of the following:
* :year
* :month
* :day
* :hour
* :minute
* :second
    
Example:
    
    example_date = Date.new(2001, 2, 3)
    
    SinceWhen::time_since( example_date, :month )

    >> "12 years 8 months"

    # or

    SinceWhen::time_since( example_date, :day)
    
    >> "12 years 8 months 12 days"
    

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
