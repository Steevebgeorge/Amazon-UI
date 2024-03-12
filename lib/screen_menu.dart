import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
        SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Column(
                  children: [
                    for (int i = 0; i < menuItems.length; i += 3)
                      Row(
                        children: [
                          for (int j = i;
                              j < i + 3 && j < menuItems.length;
                              j++)
                            Card(
                              clipBehavior: Clip.hardEdge,
                              shadowColor: const Color.fromARGB(255, 0, 0, 0),
                              elevation: 7,
                              child: InkWell(
                                splashColor: Colors.blue.withAlpha(30),
                                onTap: () {},
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      height: 100,
                                      child: Image.asset(
                                        menuItems[j]['url']!,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Text(
                                      menuItems[j]['name']!,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  List<Map<String, String>> menuItems = [
    {
      'url': 'assets/menu_images/amazon-pay.png',
      'name': 'amazon pay',
    },
    {
      'url': 'assets/menu_images/electronics.png',
      'name': 'Elecronics',
    },
    {
      'url': 'assets/menu_images/deal-of-the-day.png',
      'name': 'Deals Of The Day',
    },
    {
      'url': 'assets/menu_images/Groceries.png',
      'name': 'Groceries',
    },
    {
      'url': 'assets/menu_images/Fashion.png',
      'name': 'Fashion',
    },
    {'url': 'assets/menu_images/Beauty.png', 'name': 'Beauty'},
    {'url': 'assets/menu_images/Furniture.png', 'name': 'Furniture'},
    {'url': 'assets/menu_images/Toys.png', 'name': 'Toys'},
    {'url': 'assets/menu_images/Travel.png', 'name': 'Travel'},
    {'url': 'assets/menu_images/Sports.png', 'name': 'Sports'},
    {'url': 'assets/menu_images/Gifts.png', 'name': 'Gifts'},
    {'url': 'assets/menu_images/Amazon-Pay2.png', 'name': 'Amazon Pay'},
    {'url': 'assets/menu_images/Amazon-Music.png', 'name': ' Prime Music'},
  ];
}
