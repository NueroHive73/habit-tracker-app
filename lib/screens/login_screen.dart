import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  String errorMessage = "";

  void loginUser() {

    if (emailController.text.isEmpty ||
        passwordController.text.isEmpty) {

      setState(() {
        errorMessage = "Please enter email and password";
      });

      return;
    }

    setState(() {
      errorMessage = "Login Successful";
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xffF6F7F2),

      body: SafeArea(
        child: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.all(24),

            child: Column(
              children: [

                const SizedBox(height: 40),

                Container(
                  width: 100,
                  height: 100,

                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.circle,
                  ),

                  child: const Icon(
                    Icons.self_improvement,
                    size: 50,
                    color: Colors.green,
                  ),
                ),

                const SizedBox(height: 25),

                Text(
                  "Welcome Back",

                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  "Continue your mindfulness and habit journey.",

                  textAlign: TextAlign.center,

                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.grey.shade700,
                  ),
                ),

                const SizedBox(height: 40),

                buildTextField(
                  controller: emailController,
                  hint: "Email",
                  icon: Icons.email,
                ),

                const SizedBox(height: 20),

                buildTextField(
                  controller: passwordController,
                  hint: "Password",
                  icon: Icons.lock,
                  obscureText: true,
                ),

                const SizedBox(height: 20),

                if (errorMessage.isNotEmpty)
                  Text(
                    errorMessage,

                    style: GoogleFonts.poppins(
                      color: errorMessage == "Login Successful"
                          ? Colors.green
                          : Colors.red,

                      fontWeight: FontWeight.w600,
                    ),
                  ),

                const SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,
                  height: 55,

                  child: ElevatedButton(

                    onPressed: loginUser,

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade300,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),

                    child: Text(
                      "Login",

                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    Text(
                      "Don't have an account?",

                      style: GoogleFonts.poppins(),
                    ),

                    TextButton(
                      onPressed: () {},

                      child: Text(
                        "Sign Up",

                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
    bool obscureText = false,
  }) {

    return TextField(
      controller: controller,
      obscureText: obscureText,

      decoration: InputDecoration(
        hintText: hint,

        prefixIcon: Icon(icon),

        filled: true,
        fillColor: Colors.white,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}