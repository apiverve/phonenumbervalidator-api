# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_phonenumbervalidator"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Phone Number Validator API - Ruby Client"
  spec.description   = "Phone Number Validator checks a phone number and returns whether it is valid, its line type, country, area and time zone, and the carrier its mobile range was allocated to. It flags disposable and VoIP numbers and outputs E.164, international, national and RFC3966 formats."
  spec.homepage      = "https://apiverve.com/marketplace/phonenumbervalidator?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/phonenumbervalidator-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/phonenumbervalidator"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
