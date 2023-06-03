import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t = Translations("en_us") +
      {
        "en_us": "Theme",
        "zh_cn": "主题",
      } +
      {
        "en_us": "Display",
        "zh_cn": "显示",
      };

  String get i18n => localize(this, _t);
}
