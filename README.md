# RoyalMail

A simple page scraper for Royal Mail Track and Trace because Royal Mail don't provide any APIs.

## Installation

Add this line to your application's Gemfile:

    gem 'royal_mail'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install royal_mail

## Usage

    tracker = RoyalMail::Tracker.fetch('TRACKING_CODE')

    p tracker.status
    p tracker.message
    p tracker.details

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits

This GEM is inspired by PHP-Royal-Mail-Track-and-Trace script
https://github.com/roldershaw/PHP-Royal-Mail-Track-and-Trace
