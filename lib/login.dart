import 'dart:async';
import 'package:flutter/material.dart';
import 'package:workshop/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _SplashScreen();
}

class _SplashScreen extends State<Login> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FirstOnboardingScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // or any background color you want
      body: SizedBox.expand(
        // makes the body full screen
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Full-screen image
            Positioned.fill(
              child: Image.asset(
                "assets/sp.png",
                fit: BoxFit.cover, // makes image fill the screen
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 550),
                Text(
                  "CreamyCart",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FirstOnboardingScreen extends StatefulWidget {
  @override
  State<FirstOnboardingScreen> createState() => _FirstOnboardingScreenState();
}

class _FirstOnboardingScreenState extends State<FirstOnboardingScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🔸 Background Image
          Positioned.fill(
            child: Image.asset(
              "assets/101997.jpg", // <-- your image path
              fit: BoxFit.cover,
            ),
          ),

          // 🔸 Foreground content
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Sweetness made simple",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 8, 8, 8),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Baked with love, delivered with care. Taste the joy in every bite and make every moment sweeter.",
                    style: TextStyle(
                      fontSize: 18,

                      color: Color.fromARGB(255, 20, 20, 20),
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 50),

                  // TextField
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      // translucent bg
                      hintText: "Enter your Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Button
                  ElevatedButton(
                    onPressed: () {
                      String name = _nameController.text.trim();

                      if (name.isNotEmpty) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(userName: name),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please enter your name")),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(450, 50),
                      backgroundColor: const Color(0xffc24f4f),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 12, 12, 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
