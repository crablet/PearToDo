import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pear_todo/business/i18n/appearance_settings_page.i18n.dart';
import 'package:pear_todo/business/settings/appearance_settings/display_settings_page.dart';
import 'package:pear_todo/business/settings/appearance_settings/theme_settings_page.dart';
import 'package:pear_todo/business/settings/settings_controller.dart';

class AppearanceSettingsPage extends GetView<SettingsController> {
  const AppearanceSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: TabBar(
            tabs: [
              Tab(text: "Theme".i18n),
              Tab(text: "Display".i18n),
            ],
            // 去除由于 Material 3 而带来的底部的一根分隔条
            dividerColor: Colors.transparent,
            isScrollable: true,
          ),
        ),
        body: const TabBarView(
          children: [
            ThemeSettingsPage(),
            DisplaySettingsPage(),
          ],
        ),
      ),
    );
  }
}
