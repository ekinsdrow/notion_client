// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "hello_header": MessageLookupByLibrary.simpleMessage(
            "Привет, мы рады, что ты с нами!"),
        "lorem_ipsum": MessageLookupByLibrary.simpleMessage(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ."),
        "next": MessageLookupByLibrary.simpleMessage("Продолжить"),
        "open_notion":
            MessageLookupByLibrary.simpleMessage("Открыть notion.so"),
        "sign_in": MessageLookupByLibrary.simpleMessage("Войти"),
        "token": MessageLookupByLibrary.simpleMessage("Токен"),
        "welcome_text_1": MessageLookupByLibrary.simpleMessage(
            "Notion Client - это неофициальное приложение для сервиса Notion.so. Наша цель - сделать использование Notion на телефоне удобнее. Надеемся, вам понравится"),
        "welcome_text_2": MessageLookupByLibrary.simpleMessage(
            "При нажатии на кнопку вам будет предложено войти в ваш аккаунт notion и выбрать страницы, к которым вы дадите доступ нашему приложению")
      };
}
