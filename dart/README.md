# Phone Number Validator API - Dart/Flutter Client

Phone Number Validator checks a phone number and returns whether it is valid, its line type, country, area and time zone, and the carrier its mobile range was allocated to. It flags disposable and VoIP numbers and outputs E.164, international, national and RFC3966 formats.

[![pub package](https://img.shields.io/pub/v/apiverve_phonenumbervalidator.svg)](https://pub.dev/packages/apiverve_phonenumbervalidator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Phone Number Validator API](https://apiverve.com/marketplace/phonenumbervalidator?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_phonenumbervalidator: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_phonenumbervalidator/apiverve_phonenumbervalidator.dart';

void main() async {
  final client = PhonenumbervalidatorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'number': '816-555-1017',
      'country': 'us'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Phone Number Validator API](https://apiverve.com/marketplace/phonenumbervalidator?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/phonenumbervalidator](https://docs.apiverve.com/ref/phonenumbervalidator?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
