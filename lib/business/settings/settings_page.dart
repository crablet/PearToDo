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
      body: const Column(
        children: [],
      ),
    );
  }
}
