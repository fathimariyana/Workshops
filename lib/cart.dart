import 'package:flutter/material.dart';

List<CartItem> cart = [];   // GLOBAL CART LIST

class CartItem {
  final String name;
  final String image;
  final double price;

  CartItem({
    required this.name,
    required this.image,
    required this.price,
  });
}

class CartPage extends StatelessWidget {
  final List<CartItem> cartItems;

  const CartPage({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        width: double.infinity,
        height: double.infinity,

        // FULL SCREEN BACKGROUND IMAGE
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imageblur.png"),
            fit: BoxFit.cover,     // <-- THIS MAKES IT FULL SCREEN
          ),
        ),

        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back,color: Colors.white,size: 25,)),
             
              Center(child: Text("Your Cart",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 10),
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    final item = cartItems[index];
                    return Card(
                      elevation: 3,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey.shade300,
                          backgroundImage: AssetImage(item.image),
                        ),
                        title: Text(
                          item.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "\₹${item.price.toStringAsFixed(2)}",
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
