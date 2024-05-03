import 'package:calendar_app/widgets/primary_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Theme.of(context).colorScheme.primary,
        title: PrimaryText(
          text: 'Settings',
          color: Theme.of(context).colorScheme.inversePrimary,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryText(
                    text: 'Dark mode',
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  // CupertinoSwitch(
                  //   value: Provider.of<ThemeProvider>(context, listen: false)
                  //       .isDarkMode,
                  //   onChanged: (v) =>
                  //       Provider.of<ThemeProvider>(context, listen: false)
                  //           .toggleTheme(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
