import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {

  String quote = "Loading...";
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchQuote();
  }

  Future<void> fetchQuote() async {

    await Future.delayed(
      const Duration(seconds: 2),
    );

    setState(() {

      quote =
          "Small daily habits lead to long-term success and mindfulness.";

      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xffF6F7F2),

      appBar: AppBar(
        title: const Text("API Integration"),
      ),

      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center,

            children: [

              Text(
                "Daily Wellness Quote",

                textAlign: TextAlign.center,

                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),

                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius:
                      BorderRadius.circular(25),
                ),

                child: isLoading

                    ? const Center(
                        child:
                            CircularProgressIndicator(),
                      )

                    : Text(
                        quote,

                        textAlign: TextAlign.center,

                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          height: 1.6,
                        ),
                      ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton(

                  onPressed: () {

                    setState(() {
                      isLoading = true;
                    });

                    fetchQuote();
                  },

                  child: const Text(
                    "Refresh Quote",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}