import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pear_todo/business/i18n/settings_page.i18n.dart';
import 'package:pear_todo/business/settings/settings_controller.dart';

import 'appearance_settings/appearance_settings_page.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings".i18n),
      ),
      body: _buildMainArea(),
    );
  }

  Widget _buildMainArea() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildTabBarSettingsGroup(),
          _buildUiSettingsGroup(),
          _buildContactSettingsGroup()
        ],
      ),
    );
  }

  Widget _buildTabBarSettingsGroup() {
    return _buildSettingsGroup(
      children: [
        _buildTabBarSettingsItem(),
      ],
    );
  }

  Widget _buildUiSettingsGroup() {
    return _buildSettingsGroup(
      children: [
        _buildAppearanceSettingsItem(),
        _buildDateAndTimeSettingsItem(),
        _buildSoundsAndNotificationsSettingsItem(),
        _buildWidgetsSettingsItem(),
        _buildGeneralSettingsItem(),
      ],
    );
  }

  Widget _buildContactSettingsGroup() {
    return _buildSettingsGroup(
      children: [
        _buildHelpAndFeedbackSettingsItem(),
        _buildAboutSettingsItem(),
      ],
    );
  }

  Widget _buildSettingsGroup({required List<Widget> children}) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Column(
        children: children,
      ),
    );
  }

  Widget _buildTabBarSettingsItem() {
    return ListTile(
      leading: const Icon(Icons.widgets),
      title: Text("Tab Bar".i18n),
      trailing: const Icon(Icons.keyboard_arrow_right),
    );
  }

  Widget _buildAppearanceSettingsItem() {
    return ListTile(
      leading: const Icon(Icons.color_lens),
      title: Text("Appearance".i18n),
      trailing: const Icon(Icons.keyboard_arrow_right),
      onTap: () => Get.to(() => const AppearanceSettingsPage()),
    );
  }

  Widget _buildDateAndTimeSettingsItem() {
    return ListTile(
      leading: const Icon(Icons.access_time_filled),
      title: Text("Date & Time".i18n),
      trailing: const Icon(Icons.keyboard_arrow_right),
    );
  }

  Widget _buildSoundsAndNotificationsSettingsItem() {
    return ListTile(
      leading: const Icon(Icons.music_note),
      title: Text("Sounds & Notifications".i18n),
      trailing: const Icon(Icons.keyboard_arrow_right),
    );
  }

  Widget _buildWidgetsSettingsItem() {
    return const ListTile(
      leading: Icon(Icons.dashboard),
      title: Text("Widgets"),
      trailing: Icon(Icons.keyboard_arrow_right),
    );
  }

  Widget _buildGeneralSettingsItem() {
    return ListTile(
      leading: const Icon(Icons.toc),
      title: Text("General".i18n),
      trailing: const Icon(Icons.keyboard_arrow_right),
    );
  }

  Widget _buildHelpAndFeedbackSettingsItem() {
    return ListTile(
      leading: const Icon(Icons.help),
      title: Text("Help & Feedback".i18n),
      trailing: const Icon(Icons.keyboard_arrow_right),
    );
  }

  Widget _buildAboutSettingsItem() {
    return ListTile(
      leading: const Icon(Icons.info),
      title: Text("About".i18n),
      trailing: const Icon(Icons.keyboard_arrow_right),
      onTap: () => Get.dialog(const AboutDialog()),
    );
  }
}
