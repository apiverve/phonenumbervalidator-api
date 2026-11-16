/// Response models for the Phone Number Validator API.

/// API Response wrapper.
class PhonenumbervalidatorResponse {
  final String status;
  final dynamic error;
  final PhonenumbervalidatorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  PhonenumbervalidatorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory PhonenumbervalidatorResponse.fromJson(Map<String, dynamic> json) => PhonenumbervalidatorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? PhonenumbervalidatorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Phone Number Validator API.

class PhonenumbervalidatorData {
  String? country;
  String? detectedCountry;
  String? countryName;
  num? countrycode;
  num? numberNational;
  dynamic extension;
  bool? isValid;
  bool? isMobile;
  bool? isVoip;
  bool? isDisposable;
  String? type;
  bool? isValidNumber;
  String? nationalSignificantNumber;
  String? location;
  dynamic carrier;
  List<String>? timezones;
  PhonenumbervalidatorDataFormatted? formatted;
  num? riskScore;
  String? riskLevel;

  PhonenumbervalidatorData({
    this.country,
    this.detectedCountry,
    this.countryName,
    this.countrycode,
    this.numberNational,
    this.extension,
    this.isValid,
    this.isMobile,
    this.isVoip,
    this.isDisposable,
    this.type,
    this.isValidNumber,
    this.nationalSignificantNumber,
    this.location,
    this.carrier,
    this.timezones,
    this.formatted,
    this.riskScore,
    this.riskLevel,
  });

  factory PhonenumbervalidatorData.fromJson(Map<String, dynamic> json) => PhonenumbervalidatorData(
      country: json['country'],
      detectedCountry: json['detectedCountry'],
      countryName: json['countryName'],
      countrycode: json['countrycode'],
      numberNational: json['numberNational'],
      extension: json['extension'],
      isValid: json['isValid'],
      isMobile: json['isMobile'],
      isVoip: json['isVoip'],
      isDisposable: json['isDisposable'],
      type: json['type'],
      isValidNumber: json['isValidNumber'],
      nationalSignificantNumber: json['nationalSignificantNumber'],
      location: json['location'],
      carrier: json['carrier'],
      timezones: (json['timezones'] as List?)?.cast<String>(),
      formatted: json['formatted'] != null ? PhonenumbervalidatorDataFormatted.fromJson(json['formatted']) : null,
      riskScore: json['riskScore'],
      riskLevel: json['riskLevel'],
    );
}

class PhonenumbervalidatorDataFormatted {
  String? international;
  String? national;
  String? rfc;
  String? e164;

  PhonenumbervalidatorDataFormatted({
    this.international,
    this.national,
    this.rfc,
    this.e164,
  });

  factory PhonenumbervalidatorDataFormatted.fromJson(Map<String, dynamic> json) => PhonenumbervalidatorDataFormatted(
      international: json['international'],
      national: json['national'],
      rfc: json['rfc'],
      e164: json['e164'],
    );
}

class PhonenumbervalidatorRequest {
  String number;
  String? country;

  PhonenumbervalidatorRequest({
    required this.number,
    this.country,
  });

  Map<String, dynamic> toJson() => {
      'number': number,
      if (country != null) 'country': country,
    };
}
