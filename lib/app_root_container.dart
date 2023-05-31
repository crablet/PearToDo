import 'package:flutter/material.dart';
import 'package:pear_todo/business/i18n/app_root_container.i18n.dart';
import 'package:pear_todo/business/settings/settings_page.dart';

class AppRootContainer extends StatefulWidget {
  const AppRootContainer({Key? key}) : super(key: key);

  @override
  State<AppRootContainer> createState() => _AppRootContainerState();
}

class _AppRootContainerState extends State<AppRootContainer> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: _buildMainArea(),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return NavigationBar(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      destinations: <NavigationDestination>[
        NavigationDestination(
          icon: const Icon(Icons.check_box),
          label: "ToDo".i18n,
        ),
        NavigationDestination(
          icon: const Icon(Icons.calendar_month),
          label: "Calendar".i18n,
        ),
        NavigationDestination(
          icon: const Icon(Icons.settings),
          label: "Settings".i18n,
        ),
      ],
    );
  }

  Widget _buildMainArea() {
    const List<Widget> mainAreaWidgets = [
      Center(
        child: Text("ToDo"),
      ),
      Center(
        child: Text("Calendar"),
      ),
      SettingsPage(),
    ];

    return mainAreaWidgets[_selectedIndex];
  }

  Widget? _buildFloatingActionButton() {
    // 待办页面和日历页面显示浮动按钮，其余暂不需要
    return switch (_selectedIndex) {
      0 || 1 => FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      _ => null,
    };
  }
}
