import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t = Translations("en_us") +
      {
        "en_us": "ToDo",
        "zh_cn": "待办",
      } +
      {
        "en_us": "Calendar",
        "zh_cn": "日历",
      } +
      {
        "en_us": "Settings",
        "zh_cn": "设置",
      };

  String get i18n => localize(this, _t);
}
