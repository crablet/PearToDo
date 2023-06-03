import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t = Translations("en_us") +
      {
        "en_us": "Settings",
        "zh_cn": "设置",
      } +
      {
        "en_us": "Tab Bar",
        "zh_cn": "功能模块",
      } +
      {
        "en_us": "Appearance",
        "zh_cn": "外观",
      } +
      {
        "en_us": "Date & Time",
        "zh_cn": "日期与时间",
      } +
      {
        "en_us": "Sounds & Notifications",
        "zh_cn": "声音、提醒与通知",
      } +
      {
        "en_us": "Widgets",
        "zh_cn": "桌面小部件",
      } +
      {
        "en_us": "General",
        "zh_cn": "更多设置",
      } +
      {
        "en_us": "Help & Feedback",
        "zh_cn": "帮助与反馈",
      } +
      {
        "en_us": "About",
        "zh_cn": "关于",
      };

  String get i18n => localize(this, _t);
}
