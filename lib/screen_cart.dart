import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 235, 235),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 75,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 83, 243, 222),
                      Color.fromARGB(255, 209, 244, 229),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            actions: [
              SizedBox(
                width: 405,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 10.0,
                    left: 7,
                    top: 6.0,
                    bottom: 2.0,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 1.0, right: 5),
                      hintText: 'Search Amazon.in',
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.qr_code_2),
                          SizedBox(
                            width: 6,
                          ),
                          Icon(Icons.mic)
                        ],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return buildCartItem(cartItems[index]);
              },
              childCount: cartItems.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCartItem(Map<String, String> item) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        height: 200,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.network(
                      item['url'] ?? '',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        item['name'] ?? '',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 130.0),
                        child: Text(
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                          item['Price'] ?? '',
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        padding: const MaterialStatePropertyAll(
                          EdgeInsets.only(left: 60, right: 60),
                        ),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.yellow[400]),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "delete",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        padding: const MaterialStatePropertyAll(
                          EdgeInsets.only(left: 50, right: 50),
                        ),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.yellow[400]),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Compare",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Map<String, String>> cartItems = [
    {
      'name': 'VILLAIN BLACK Eau de Parfum ',
      'url':
          "https://rukminim2.flixcart.com/image/612/612/xif0q/perfume/x/e/8/100-aqua-moonstone-eau-de-parfum-unisex-fragrance-exquisite-indo-original-imagv5ehy7hhqzh4.jpeg?q=70",
      'Price': '₹459',
    },
    {
      'name': 'Apple iPhone 14 (Blue, 128 GB)',
      'url':
          'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/3/5/l/-original-imaghx9qmgqsk9s4.jpeg?q=70&crop=false',
      'Price': '₹58,999',
    },
    {
      'url':
          'https://rukminim2.flixcart.com/image/612/612/jvif0y80/bangle-bracelet-armlet/g/g/k/2-4-1-univ-black-bio-bracelet-university-trendz-original-imafge8pzdwwxdqh.jpeg?q=70',
      'name': ' Black Silver Bracelet',
      'Price': '₹599',
    },
    {
      'url':
          'https://rukminim2.flixcart.com/image/416/416/xif0q/remote-control-toy/s/z/p/kids-rechargeable-remote-control-monster-crawler-truck-car-with-original-imagygynmrpz42be.jpeg?q=70&crop=false',
      'name': 'Remote Control Truck',
      'Price': '₹999',
    },
    {
      'url':
          'https://rukminim2.flixcart.com/image/416/416/xif0q/pet-food/r/j/q/-original-imagxyc26nzyxqcu.jpeg?q=70&crop=false',
      'name': 'PEDIGREE Dog Food',
      'Price': '₹687',
    }
  ];
}


