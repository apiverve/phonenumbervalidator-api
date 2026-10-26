using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.PhoneNumberValidator
{
    /// <summary>
    /// Query options for the Phone Number Validator API
    /// </summary>
    public class PhoneNumberValidatorQueryOptions
    {
        /// <summary>
        /// The phone number to validate
        /// </summary>
        [JsonProperty("number")]
        public string Number { get; set; }

        /// <summary>
        /// The two-letter country code of the phone number (e.g., us, uk). Optional when the number is in international format starting with +
        /// </summary>
        [JsonProperty("country")]
        public string Country { get; set; }
    }
}
