import 'package:flutter/material.dart';
import 'package:workshop/cart.dart';

class Donuts extends StatelessWidget {
  final String imagePath; // image passed from previous page
  final String donutName; // name of the donut
  final double price; // price of the donut

  const Donuts({
    super.key,
    required this.imagePath,
    required this.donutName,
    required this.price,
  });

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
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back,
                        color: Colors.white, size: 25),
                  ),

                  /// DONUT IMAGE
                  Center(
                    child: CircleAvatar(
                      radius: 90,
                      backgroundImage: AssetImage(imagePath),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// DONUT NAME
                  Center(
                    child: Text(
                      donutName,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// DESCRIPTION BOX
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Description:",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Enjoy the sweet, fruity taste of our Strawberry Glazed Donut, "
                          "made with soft, fluffy dough and coated in a smooth glaze crafted "
                          "from real strawberries. Light, fresh, and perfectly sweet—this donut "
                          "delivers a delicious burst of strawberry flavor in every bite.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// INGREDIENTS BOX
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Ingredients:",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "• All-purpose flour\n"
                            "• Sugar\n"
                            "• Salt\n"
                            "• Yeast\n"
                            "• Milk\n"
                            "• Butter\n"
                            "• Eggs\n"
                            "• Vanilla extract\n"
                            "• Strawberries\n"
                            "• Powdered sugar\n"
                            "• Lemon",
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.5,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 239, 232, 232),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            "Price : \₹${price.toStringAsFixed(2)}",
                            style: TextStyle(
                              color: Color.fromARGB(255, 61, 3, 53),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),

                      /// ============================
                      /// ADD TO CART (NO DUPLICATES)
                      /// ============================
                      ElevatedButton(
                        onPressed: () {
                          // bool exists = cart.any(
                          //     (item) => item.name == donutName);

                          // if (!exists) {
                          //   cart.add(
                          //     CartItem(
                          //       name: donutName,
                          //       image: imagePath,
                          //       price: price,
                          //     ),
                          //   );

                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(
                          //       content: Text("Added to cart"),
                          //       duration: Duration(seconds: 1),
                          //     ),
                          //   );
                          // } else {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(
                          //       content: Text("Item already in cart"),
                          //       duration: Duration(seconds: 1),
                          //     ),
                          //   );
                          // }m

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  CartPage(cartItems: cart),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Color.fromARGB(255, 239, 232, 232),
                          minimumSize: Size(130, 60),
                        ),
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                            color: Color.fromARGB(255, 61, 3, 53),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
