import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() =>
      _SettingsScreenState();
}

class _SettingsScreenState
    extends State<SettingsScreen> {

  bool notificationsEnabled = true;
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xffF6F7F2),

      appBar: AppBar(

        title: Text(
          "Settings",

          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            SwitchListTile(

              value: notificationsEnabled,

              onChanged: (value) {

                setState(() {
                  notificationsEnabled = value;
                });
              },

              title: Text(
                "Enable Notifications",

                style: GoogleFonts.poppins(),
              ),
            ),

            const SizedBox(height: 20),

            SwitchListTile(

              value: darkMode,

              onChanged: (value) {

                setState(() {
                  darkMode = value;
                });
              },

              title: Text(
                "Dark Mode",

                style: GoogleFonts.poppins(),
              ),
            ),

            const SizedBox(height: 20),

            ListTile(

              leading: const Icon(Icons.language),

              title: Text(
                "Language",

                style: GoogleFonts.poppins(),
              ),

              trailing: DropdownButton<String>(

                value: "English",

                items: const [

                  DropdownMenuItem(
                    value: "English",
                    child: Text("English"),
                  ),

                  DropdownMenuItem(
                    value: "Spanish",
                    child: Text("Spanish"),
                  ),
                ],

                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}