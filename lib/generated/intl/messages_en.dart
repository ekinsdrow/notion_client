// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "hello_header": MessageLookupByLibrary.simpleMessage(
            "Hello, we are glad that you are with us!"),
        "lorem_ipsum": MessageLookupByLibrary.simpleMessage(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ."),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "open_notion": MessageLookupByLibrary.simpleMessage("Open notion.so"),
        "sign_in": MessageLookupByLibrary.simpleMessage("Sign in"),
        "token": MessageLookupByLibrary.simpleMessage("Token"),
        "welcome_text_1": MessageLookupByLibrary.simpleMessage(
            "Notion Client is an unofficial application for the Notion.so. Our goal is to make the use of the Notion on the phone convenient. We hope you will like it"),
        "welcome_text_2": MessageLookupByLibrary.simpleMessage(
            "When you click on the button, you will be prompted to log into your Notion account and select the pages to which you will give access to our application"),
        "welcome_text_3": MessageLookupByLibrary.simpleMessage(
            "You need to sign in with either apple or password / SAML SSO. Google does not allow authorization inside other applications.")
      };
}
