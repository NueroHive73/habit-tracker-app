import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersistenceScreen extends StatefulWidget {
  const PersistenceScreen({super.key});

  @override
  State<PersistenceScreen> createState() =>
      _PersistenceScreenState();
}

class _PersistenceScreenState
    extends State<PersistenceScreen> {

  final TextEditingController usernameController =
      TextEditingController();

  String savedUsername = "";

  @override
  void initState() {
    super.initState();
    loadUsername();
  }

  Future<void> saveUsername() async {

    SharedPreferences prefs =
        await SharedPreferences.getInstance();

    await prefs.setString(
      "username",
      usernameController.text,
    );

    loadUsername();
  }

  Future<void> loadUsername() async {

    SharedPreferences prefs =
        await SharedPreferences.getInstance();

    setState(() {
      savedUsername =
          prefs.getString("username") ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xffF6F7F2),

      appBar: AppBar(
        title: const Text("Local Storage"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            Text(
              "Save Username",

              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            TextField(
              controller: usernameController,

              decoration: InputDecoration(
                hintText: "Enter username",

                filled: true,
                fillColor: Colors.white,

                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(20),

                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(

                onPressed: saveUsername,

                child: const Text("Save Username"),
              ),
            ),

            const SizedBox(height: 40),

            Text(
              "Saved Username:",

              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white,

                borderRadius:
                    BorderRadius.circular(20),
              ),

              child: Text(
                savedUsername.isEmpty
                    ? "No username saved"
                    : savedUsername,

                style: GoogleFonts.poppins(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}