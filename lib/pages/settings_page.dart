import 'package:flutter/material.dart';


class SettingsPage extends StatefulWidget {
  static const String id = 'settings_page';
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final userId = ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.red,
          textColor: Colors.white,
          child: Text(userId ?? 'Did not get any value'),
          onPressed: () {},
        ),
      ),
    );
  }
}
