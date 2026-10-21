# Phone Number Validator API - Ruby Gem

Phone Number Validator checks a phone number and country code to determine validity, line type, and country of origin. It flags disposable or VoIP numbers and outputs standardized international, national, RFC3966, and E.164 formats.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_phonenumbervalidator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_phonenumbervalidator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_phonenumbervalidator'

# Initialize the client
client = APIVerve::Phonenumbervalidator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  number: "816-555-1017",
  country: "us"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ number: "816-555-1017", country: "us" })
  puts response["data"]
rescue APIVerve::Phonenumbervalidator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Phonenumbervalidator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Phonenumbervalidator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "country": "US",
    "detectedCountry": "US",
    "countryName": "United States",
    "countrycode": 1,
    "numberNational": 8165551017,
    "extension": null,
    "isValid": true,
    "isMobile": true,
    "isVoip": false,
    "isDisposable": false,
    "type": "fixed_line_or_mobile",
    "formatted": {
      "international": "+1 816-555-1017",
      "national": "(816) 555-1017",
      "rfc": "tel:+1-816-555-1017",
      "e164": "+18165551017"
    },
    "riskScore": 0,
    "riskLevel": "low"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/phonenumbervalidator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/phonenumbervalidator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/phonenumbervalidator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
