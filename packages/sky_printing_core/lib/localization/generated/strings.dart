import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'strings_en.dart';
import 'strings_id.dart';

/// Callers can lookup localized strings with an instance of Strings
/// returned by `Strings.of(context)`.
///
/// Applications need to include `Strings.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/strings.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Strings.localizationsDelegates,
///   supportedLocales: Strings.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Strings.supportedLocales
/// property.
abstract class Strings {
  Strings(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Strings? of(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  static const LocalizationsDelegate<Strings> delegate = _StringsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('id')
  ];

  /// No description provided for @no_order_found.
  ///
  /// In en, this message translates to:
  /// **'No order found'**
  String get no_order_found;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @activity.
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get activity;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @ask_register.
  ///
  /// In en, this message translates to:
  /// **'Don\'t Have an Account?'**
  String get ask_register;

  /// No description provided for @black_and_white.
  ///
  /// In en, this message translates to:
  /// **'Black and White'**
  String get black_and_white;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @choose_language.
  ///
  /// In en, this message translates to:
  /// **'Choose Language'**
  String get choose_language;

  /// No description provided for @choose_theme.
  ///
  /// In en, this message translates to:
  /// **'Choose Theme'**
  String get choose_theme;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @city_empty.
  ///
  /// In en, this message translates to:
  /// **'City can\'t be empty'**
  String get city_empty;

  /// No description provided for @color.
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get color;

  /// No description provided for @colors.
  ///
  /// In en, this message translates to:
  /// **'Colors'**
  String get colors;

  /// No description provided for @confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Repeat Password'**
  String get confirm_password;

  /// No description provided for @copies.
  ///
  /// In en, this message translates to:
  /// **'Copies'**
  String get copies;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// No description provided for @country_empty.
  ///
  /// In en, this message translates to:
  /// **'Country can\'t be empty'**
  String get country_empty;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @create_report.
  ///
  /// In en, this message translates to:
  /// **'Create Report'**
  String get create_report;

  /// No description provided for @customer_details.
  ///
  /// In en, this message translates to:
  /// **'Customer Details'**
  String get customer_details;

  /// No description provided for @customer_name.
  ///
  /// In en, this message translates to:
  /// **'Customer Name'**
  String get customer_name;

  /// No description provided for @dashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboard;

  /// No description provided for @document_details.
  ///
  /// In en, this message translates to:
  /// **'Document Details'**
  String get document_details;

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @end_date.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get end_date;

  /// No description provided for @enter.
  ///
  /// In en, this message translates to:
  /// **'Enter'**
  String get enter;

  /// No description provided for @error_empty_field.
  ///
  /// In en, this message translates to:
  /// **'Can\'t be empty'**
  String get error_empty_field;

  /// No description provided for @error_invalid_email.
  ///
  /// In en, this message translates to:
  /// **'Email is not valid'**
  String get error_invalid_email;

  /// No description provided for @error_no_data.
  ///
  /// In en, this message translates to:
  /// **'No data'**
  String get error_no_data;

  /// No description provided for @error_password_length.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get error_password_length;

  /// No description provided for @error_password_not_match.
  ///
  /// In en, this message translates to:
  /// **'Password doesn\'t match'**
  String get error_password_not_match;

  /// No description provided for @file_name.
  ///
  /// In en, this message translates to:
  /// **'File Name'**
  String get file_name;

  /// No description provided for @file_size.
  ///
  /// In en, this message translates to:
  /// **'File Size'**
  String get file_size;

  /// No description provided for @file_type.
  ///
  /// In en, this message translates to:
  /// **'File Type'**
  String get file_type;

  /// No description provided for @get_started.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get get_started;

  /// No description provided for @hint.
  ///
  /// In en, this message translates to:
  /// **'Hint'**
  String get hint;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @income.
  ///
  /// In en, this message translates to:
  /// **'Income'**
  String get income;

  /// No description provided for @last_activity.
  ///
  /// In en, this message translates to:
  /// **'Last Activity'**
  String get last_activity;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @logout_desc.
  ///
  /// In en, this message translates to:
  /// **'Do you want to logout from the app?'**
  String get logout_desc;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @no_file_option_selected.
  ///
  /// In en, this message translates to:
  /// **'No file option selected'**
  String get no_file_option_selected;

  /// No description provided for @no_file_selected.
  ///
  /// In en, this message translates to:
  /// **'No file selected'**
  String get no_file_selected;

  /// No description provided for @no_services.
  ///
  /// In en, this message translates to:
  /// **'No services'**
  String get no_services;

  /// No description provided for @no_store_available.
  ///
  /// In en, this message translates to:
  /// **'No store available'**
  String get no_store_available;

  /// No description provided for @no_store_selected.
  ///
  /// In en, this message translates to:
  /// **'No store selected'**
  String get no_store_selected;

  /// No description provided for @order.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get order;

  /// No description provided for @order_details.
  ///
  /// In en, this message translates to:
  /// **'Order Details'**
  String get order_details;

  /// No description provided for @order_has_picked_up.
  ///
  /// In en, this message translates to:
  /// **'Order has picked up'**
  String get order_has_picked_up;

  /// No description provided for @order_has_printed.
  ///
  /// In en, this message translates to:
  /// **'Order has printed'**
  String get order_has_printed;

  /// No description provided for @order_payment.
  ///
  /// In en, this message translates to:
  /// **'Order payment'**
  String get order_payment;

  /// No description provided for @our_services.
  ///
  /// In en, this message translates to:
  /// **'Our Services'**
  String get our_services;

  /// No description provided for @pages.
  ///
  /// In en, this message translates to:
  /// **'Pages'**
  String get pages;

  /// No description provided for @paper.
  ///
  /// In en, this message translates to:
  /// **'Paper'**
  String get paper;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @password_empty.
  ///
  /// In en, this message translates to:
  /// **'Password can\'t be empty'**
  String get password_empty;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @phone_empty.
  ///
  /// In en, this message translates to:
  /// **'Phone can\'t be empty'**
  String get phone_empty;

  /// No description provided for @photo_print.
  ///
  /// In en, this message translates to:
  /// **'Photo Print'**
  String get photo_print;

  /// No description provided for @pick_end_date.
  ///
  /// In en, this message translates to:
  /// **'Pick End Date'**
  String get pick_end_date;

  /// No description provided for @pick_start_date.
  ///
  /// In en, this message translates to:
  /// **'Pick Start Date'**
  String get pick_start_date;

  /// No description provided for @please_fill_copies_field.
  ///
  /// In en, this message translates to:
  /// **'Please fill copies field'**
  String get please_fill_copies_field;

  /// No description provided for @please_wait.
  ///
  /// In en, this message translates to:
  /// **'Please Wait...'**
  String get please_wait;

  /// No description provided for @print.
  ///
  /// In en, this message translates to:
  /// **'Print'**
  String get print;

  /// No description provided for @printing_binding.
  ///
  /// In en, this message translates to:
  /// **'Printing and Binding'**
  String get printing_binding;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @reason.
  ///
  /// In en, this message translates to:
  /// **'Reason'**
  String get reason;

  /// No description provided for @recent_transactions.
  ///
  /// In en, this message translates to:
  /// **'Recent Transactions'**
  String get recent_transactions;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @regular_printing.
  ///
  /// In en, this message translates to:
  /// **'Regular Printing'**
  String get regular_printing;

  /// No description provided for @scan.
  ///
  /// In en, this message translates to:
  /// **'Scan'**
  String get scan;

  /// No description provided for @scan_desc.
  ///
  /// In en, this message translates to:
  /// **'Please move your camera over another device screen!'**
  String get scan_desc;

  /// No description provided for @scan_qr_code_here.
  ///
  /// In en, this message translates to:
  /// **'Scan QR Code Here'**
  String get scan_qr_code_here;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @select_date.
  ///
  /// In en, this message translates to:
  /// **'Choose Date'**
  String get select_date;

  /// No description provided for @select_time.
  ///
  /// In en, this message translates to:
  /// **'Choose Time'**
  String get select_time;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @sheet.
  ///
  /// In en, this message translates to:
  /// **'Sheet'**
  String get sheet;

  /// No description provided for @start_date.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get start_date;

  /// No description provided for @start_from.
  ///
  /// In en, this message translates to:
  /// **'Start from'**
  String get start_from;

  /// No description provided for @state.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get state;

  /// No description provided for @state_empty.
  ///
  /// In en, this message translates to:
  /// **'State can\'t be empty'**
  String get state_empty;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @store_failed_to_update.
  ///
  /// In en, this message translates to:
  /// **'Store failed to update'**
  String get store_failed_to_update;

  /// No description provided for @store_info.
  ///
  /// In en, this message translates to:
  /// **'Store Info'**
  String get store_info;

  /// No description provided for @store_name.
  ///
  /// In en, this message translates to:
  /// **'Store Name'**
  String get store_name;

  /// No description provided for @store_name_empty.
  ///
  /// In en, this message translates to:
  /// **'Store name can\'t be empty'**
  String get store_name_empty;

  /// No description provided for @store_updated.
  ///
  /// In en, this message translates to:
  /// **'Store updated'**
  String get store_updated;

  /// No description provided for @street.
  ///
  /// In en, this message translates to:
  /// **'Street'**
  String get street;

  /// No description provided for @street_empty.
  ///
  /// In en, this message translates to:
  /// **'Street can\'t be empty'**
  String get street_empty;

  /// No description provided for @theme_dark.
  ///
  /// In en, this message translates to:
  /// **'Theme Dark'**
  String get theme_dark;

  /// No description provided for @theme_light.
  ///
  /// In en, this message translates to:
  /// **'Theme Light'**
  String get theme_light;

  /// No description provided for @theme_system.
  ///
  /// In en, this message translates to:
  /// **'Theme System'**
  String get theme_system;

  /// No description provided for @top_up.
  ///
  /// In en, this message translates to:
  /// **'Top up'**
  String get top_up;

  /// No description provided for @total_orders.
  ///
  /// In en, this message translates to:
  /// **'Total Orders'**
  String get total_orders;

  /// No description provided for @total_pages.
  ///
  /// In en, this message translates to:
  /// **'Total Pages'**
  String get total_pages;

  /// No description provided for @total_price.
  ///
  /// In en, this message translates to:
  /// **'Total Price'**
  String get total_price;

  /// No description provided for @transfer.
  ///
  /// In en, this message translates to:
  /// **'Transfer'**
  String get transfer;

  /// No description provided for @try_refreshing_the_page.
  ///
  /// In en, this message translates to:
  /// **'Try refreshing the page'**
  String get try_refreshing_the_page;

  /// No description provided for @update_profile.
  ///
  /// In en, this message translates to:
  /// **'Update Profile'**
  String get update_profile;

  /// No description provided for @user_name.
  ///
  /// In en, this message translates to:
  /// **'User Name'**
  String get user_name;

  /// No description provided for @wallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get wallet;

  /// No description provided for @welcome_to.
  ///
  /// In en, this message translates to:
  /// **'Welcome to'**
  String get welcome_to;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @your_location.
  ///
  /// In en, this message translates to:
  /// **'Your Location'**
  String get your_location;

  /// No description provided for @zip_code.
  ///
  /// In en, this message translates to:
  /// **'Zip Code'**
  String get zip_code;

  /// No description provided for @zip_code_empty.
  ///
  /// In en, this message translates to:
  /// **'Zip Code can\'t be empty'**
  String get zip_code_empty;

  /// No description provided for @zipcode.
  ///
  /// In en, this message translates to:
  /// **'Zip Code'**
  String get zipcode;
}

class _StringsDelegate extends LocalizationsDelegate<Strings> {
  const _StringsDelegate();

  @override
  Future<Strings> load(Locale locale) {
    return SynchronousFuture<Strings>(lookupStrings(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_StringsDelegate old) => false;
}

Strings lookupStrings(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return StringsEn();
    case 'id': return StringsId();
  }

  throw FlutterError(
    'Strings.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
