import '../../features/auth/countryPicker/data/models/all_country_with_flag.dart';

class SharedPrefKeys {
  static const String userdata = 'userdata';
}

class Constants {
  static String selectedCountrycode = '';
  static String selectedCountryname = '';
  static String selectedCountryFlag = '';
  static List<AllCountryWithFlag> countryList() {
    return [
      AllCountryWithFlag(
        name: 'United States',
        flag: 'https://www.countryflags.io/us/flat/64.png',
        phoneCode: '+1',
      ),
      AllCountryWithFlag(
        name: 'Canada',
        flag: 'https://www.countryflags.io/ca/flat/64.png',
        phoneCode: '+1',
      ),
      AllCountryWithFlag(
        name: 'United Kingdom',
        flag: 'https://www.countryflags.io/gb/flat/64.png',
        phoneCode: '+44',
      ),
      AllCountryWithFlag(
        name: 'Australia',
        flag: 'https://www.countryflags.io/au/flat/64.png',
        phoneCode: '+61',
      ),
      AllCountryWithFlag(
        name: 'India',
        flag: 'https://www.countryflags.io/in/flat/64.png',
        phoneCode: '+91',
      ),
      // Add more dummy data as needed
    ];
  }
}
