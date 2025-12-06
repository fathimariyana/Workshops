import 'package:flutter/material.dart';
import 'package:workshop/donuts.dart';

class HomePage extends StatelessWidget {
  final String userName;

  const HomePage({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imageblur.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),

                // Welcome text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Hi, $userName 👋",
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(221, 254, 251, 251),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // FIXED → Removed duplicated padding+row block
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Donuts(
                                imagePath: "assets/Donut.jpg",
                                donutName: "Strawberry Donut",
                                price: 200,
                              ),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          radius: 55,
                          backgroundColor: Colors.white,
                          child: ClipOval(
                            child: Image.asset(
                              "assets/Donut.jpg",
                              fit: BoxFit.cover,
                              width: 110,
                              height: 110,
                            ),
                          ),
                        ),
                      ),

                      CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/Pastry1.jpg",
                            fit: BoxFit.cover,
                            width: 110,
                            height: 110,
                          ),
                        ),
                      ),

                      CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/macrons.jpg",
                            fit: BoxFit.cover,
                            width: 110,
                            height: 110,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50),

                // Donut + Pastry Cards Row
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Donuts(
                                imagePath: "assets/Donut.jpg",
                                donutName: "Strawberry Donut",
                                price: 200,
                              ),
                            ),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white.withOpacity(0.9),
                          elevation: 5,
                          child: Container(
                            width: 165,
                            height: 200,
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage("assets/Donut.jpg"),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Strawberry Donut",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "200₹",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      GestureDetector( 
                        onTap: () {
                          print("Pink Donut clicked");
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white.withOpacity(0.9),
                          elevation: 5,
                          child: Container(
                            width: 160,
                            height: 200,
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage("assets/Pastry1.jpg"),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "chocolate pastry",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "50₹",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // Macaron Card
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Colors.white.withOpacity(0.9),
                        elevation: 5,
                        child: Container(
                          width: 165,
                          height: 200,
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage("assets/macrons.jpg"),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Macarons",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "62₹",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
