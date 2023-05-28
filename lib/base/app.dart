import 'dart:ui';

import 'package:get/get.dart';
import 'package:pear_todo/business/settings/settings_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App {
  static late SharedPreferences sp;
  static const String spPrefix = "PEAR_TODO_";

  /// 初始化全局变量，必须确保该函数在main中被调用
  static Future<void> init() async {
    sp = await SharedPreferences.getInstance();
    Get.put(SettingsController());
  }

  static const List<Locale> supportedLocales = [
    Locale("en", "US"),
    Locale("zh", "CN"),
  ];

  static const List<String> supportedLocalesNames = [
    "English",
    "简体中文",
  ];

  // 区域代码默认去找本地语言，如果本地语言在支持列表中，就使用，否则美国为默认
  static String get countryCode {
    final spLocale = sp.getString("${spPrefix}countryCode");
    if (spLocale != null) {
      // 先去找sp里有没有存语言，如果有则直接返回
      return spLocale;
    } else {
      // 如果sp中没有存放语言设置
      final systemLocale = PlatformDispatcher.instance.locale;
      // 则看看本地语言是否在支持列表中
      if (supportedLocales.any((locale) =>
          locale.countryCode == systemLocale.countryCode &&
          locale.languageCode == systemLocale.languageCode)) {
        // 如果本地语言在支持列表中，则直接返回本地语言所在的国家代码
        return systemLocale.countryCode ?? "";
      } else {
        // 如果本地语言不在支持列表中，则返回默认值美国
        return "US";
      }
    }
  }

  static set countryCode(String code) =>
      sp.setString("${spPrefix}countryCode", code);

  // 语言代码默认去找本地语言，如果本地语言在支持列表中，就使用，否则英语为默认
  static String get languageCode {
    final spLocale = sp.getString("${spPrefix}languageCode");
    if (spLocale != null) {
      // 先去找sp里有没有存语言，如果有则直接返回
      return spLocale;
    } else {
      // 如果sp中没有存放语言设置
      final systemLocale = PlatformDispatcher.instance.locale;
      // 则看看本地语言是否在支持列表中
      if (supportedLocales.any((locale) =>
          locale.countryCode == systemLocale.countryCode &&
          locale.languageCode == systemLocale.languageCode)) {
        // 如果本地语言在支持列表中，则直接返回本地语言的语言代码
        return systemLocale.languageCode;
      } else {
        // 如果本地语言不在支持列表中，则返回默认值英语
        return "en";
      }
    }
  }

  static set languageCode(String code) =>
      sp.setString("${spPrefix}languageCode", code);

  static Locale get locale => Locale(languageCode, countryCode);

  static const String fileSuffix = ".pear";

  static String? getString(String key) => sp.getString(key);

  static Future<bool> setString(String key, String value) =>
      sp.setString(key, value);
}
