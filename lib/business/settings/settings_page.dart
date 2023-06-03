import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pear_todo/business/settings/settings_controller.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Column(
        children: [
          _buildSettingsGroup(
            children: [
              _buildTabBarSettingsItem(),
            ],
          ),
          _buildSettingsGroup(
            children: [
              _buildAppearanceSettingsItem(),
              _buildDateAndTimeSettingsItem(),
              _buildSoundsAndNotificationsSettingsItem(),
              _buildWidgetsSettingsItem(),
              _buildGeneralSettingsItem(),
            ],
          ),
          _buildSettingsGroup(
            children: [
              _buildHelpAndFeedbackSettingsItem(),
              _buildAboutSettingsItem(),
            ],
          ),
        ],
      ),
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
    return const ListTile(
      leading: Icon(Icons.widgets),
      title: Text("Tab Bar"),
      trailing: Icon(Icons.keyboard_arrow_right),
    );
  }

  Widget _buildAppearanceSettingsItem() {
    return const ListTile(
      leading: Icon(Icons.color_lens),
      title: Text("Appearance"),
      trailing: Icon(Icons.keyboard_arrow_right),
    );
  }

  Widget _buildDateAndTimeSettingsItem() {
    return const ListTile(
      leading: Icon(Icons.access_time_filled),
      title: Text("Date & Time"),
      trailing: Icon(Icons.keyboard_arrow_right),
    );
  }

  Widget _buildSoundsAndNotificationsSettingsItem() {
    return const ListTile(
      leading: Icon(Icons.music_note),
      title: Text("Sounds & Notifications"),
      trailing: Icon(Icons.keyboard_arrow_right),
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
    return const ListTile(
      leading: Icon(Icons.toc),
      title: Text("General"),
      trailing: Icon(Icons.keyboard_arrow_right),
    );
  }

  Widget _buildHelpAndFeedbackSettingsItem() {
    return const ListTile(
      leading: Icon(Icons.help),
      title: Text("Help & Feedback"),
      trailing: Icon(Icons.keyboard_arrow_right),
    );
  }

  Widget _buildAboutSettingsItem() {
    return ListTile(
      leading: const Icon(Icons.info),
      title: const Text("About"),
      trailing: const Icon(Icons.keyboard_arrow_right),
      onTap: () {
        Get.dialog(const AboutDialog());
      },
    );
  }
}
