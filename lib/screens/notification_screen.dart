import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() =>
      _NotificationScreenState();
}

class _NotificationScreenState
    extends State<NotificationScreen> {

  bool notificationsEnabled = true;

  void triggerNotification() {

    ScaffoldMessenger.of(context).showSnackBar(

      const SnackBar(
        content: Text(
          "Habit reminder notification triggered!",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xffF6F7F2),

      appBar: AppBar(

        title: Text(
          "Notifications",

          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            Container(

              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white,

                borderRadius:
                    BorderRadius.circular(20),
              ),

              child: SwitchListTile(

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
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(

                onPressed: triggerNotification,

                child: const Text(
                  "Send Test Notification",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}