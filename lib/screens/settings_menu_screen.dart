import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'settings_screen.dart';

class SettingsMenuScreen extends StatelessWidget {
  const SettingsMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xffF6F7F2),

      appBar: AppBar(

        title: Text(
          "Settings Menu",

          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            buildMenuItem(
              context,
              Icons.person,
              "Profile",
            ),

            buildMenuItem(
              context,
              Icons.notifications,
              "Notifications",
            ),

            buildMenuItem(
              context,
              Icons.dark_mode,
              "Dark Mode",
            ),

            buildMenuItem(
              context,
              Icons.security,
              "Privacy & Security",
            ),

            buildMenuItem(
              context,
              Icons.settings,
              "App Settings",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(
    BuildContext context,
    IconData icon,
    String title,
  ) {

    return GestureDetector(

      onTap: () {

        Navigator.push(
          context,

          MaterialPageRoute(
            builder: (context) =>
                const SettingsScreen(),
          ),
        );
      },

      child: Container(

        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(20),

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius:
              BorderRadius.circular(20),
        ),

        child: Row(

          children: [

            Icon(
              icon,
              color: Colors.green,
            ),

            const SizedBox(width: 20),

            Expanded(
              child: Text(
                title,

                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}