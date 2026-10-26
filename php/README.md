# Phone Number Validator API - PHP Package

Phone Number Validator checks a phone number and returns whether it is valid, its line type, country, area and time zone, and the carrier its mobile range was allocated to. It flags disposable and VoIP numbers and outputs E.164, international, national and RFC3966 formats.

## Installation

Install via Composer:

```bash
composer require apiverve/phonenumbervalidator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Phonenumbervalidator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'number' => '816-555-1017',
    'country' => 'us'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Phonenumbervalidator\Client;
use APIVerve\Phonenumbervalidator\Exceptions\APIException;
use APIVerve\Phonenumbervalidator\Exceptions\ValidationException;

try {
    $response = $client->execute(['number' => '816-555-1017', 'country' => 'us']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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
    "isValidNumber": true,
    "nationalSignificantNumber": "8165551017",
    "location": "Missouri",
    "carrier": null,
    "timezones": [
      "America/Chicago"
    ],
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/phonenumbervalidator?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/phonenumbervalidator?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/phonenumbervalidator?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
