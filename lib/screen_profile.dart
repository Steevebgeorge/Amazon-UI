import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 103,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 45, left: 20),
                          child: Image.asset(
                            'assets/amazon-logo.png',
                            width: 90,
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(top: 45),
                          child: Icon(Icons.notifications_none),
                        ),
                        const SizedBox(width: 20),
                        const Padding(
                          padding: EdgeInsets.only(top: 45, right: 20),
                          child: Icon(Icons.search),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.person_2_rounded),
                              SizedBox(width: 8),
                              Text('Hello, Steeve'),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 21, top: 10, right: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.only(left: 50, right: 50),
                            elevation: 5),
                        child: const Text(
                          "Your Orders",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 35, top: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.only(left: 50, right: 50),
                            elevation: 5),
                        child: const Text(
                          "Buy Again",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 21, top: 10, right: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.only(left: 50, right: 50),
                            elevation: 5),
                        child: const Text(
                          "Your Account",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 35, top: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.only(left: 50, right: 50),
                            elevation: 5),
                        child: const Text(
                          "Your List",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  height: 300,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Recently Bought Items',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 250,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    for (Map<String, String> item
                                        in boughtItems)
                                      Column(
                                        children: [
                                          Card(
                                            color: Colors.white,
                                            child: Column(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      const BorderRadius
                                                          .vertical(
                                                          top: Radius.circular(
                                                              15)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Image.asset(
                                                      item['url']!,
                                                      fit: BoxFit.contain,
                                                      height: 130,
                                                      width: 200,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  item['name']!,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  '₹ ${item['Price']}',
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                    padding:
                                                        MaterialStateProperty.all<
                                                            EdgeInsetsGeometry>(
                                                      const EdgeInsets.only(
                                                          left: 50.0,
                                                          right:
                                                              50), // Set your desired padding here
                                                    ),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                      const Color.fromARGB(
                                                          255,
                                                          233,
                                                          245,
                                                          69), // Set your desired color here
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    'Buy Now',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Recently Searched Items',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 250,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    for (Map<String, String> item
                                        in searchedRecentlyItems)
                                      Column(
                                        children: [
                                          Card(
                                            child: Column(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      const BorderRadius
                                                          .vertical(
                                                          top: Radius.circular(
                                                              15)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Image.asset(
                                                      item['url']!,
                                                      fit: BoxFit.contain,
                                                      height: 130,
                                                      width: 200,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  item['name']!,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  '₹ ${item['Price']}',
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                    padding:
                                                        MaterialStateProperty.all<
                                                            EdgeInsetsGeometry>(
                                                      const EdgeInsets.only(
                                                          left: 50.0,
                                                          right:
                                                              50), // Set your desired padding here
                                                    ),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                      const Color.fromARGB(
                                                          255,
                                                          233,
                                                          245,
                                                          69), // Set your desired color here
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    'Buy Now',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Liked Items',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 250,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    for (Map<String, String> item in likedItems)
                                      Column(
                                        children: [
                                          Card(
                                            child: Column(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      const BorderRadius
                                                          .vertical(
                                                          top: Radius.circular(
                                                              15)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Image.asset(
                                                      item['url']!,
                                                      fit: BoxFit.contain,
                                                      height: 130,
                                                      width: 200,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  item['name']!,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  '₹ ${item['Price']}',
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                    padding:
                                                        MaterialStateProperty.all<
                                                            EdgeInsetsGeometry>(
                                                      const EdgeInsets.only(
                                                          left: 50.0,
                                                          right:
                                                              50), // Set your desired padding here
                                                    ),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                      const Color.fromARGB(
                                                          255,
                                                          233,
                                                          245,
                                                          69), // Set your desired color here
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    'Buy Now',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Map<String, String>> boughtItems = [
    {
      'name': 'MILTON Casserole ',
      'url': 'assets/profile_images/Casserole.png',
      'Price': '999',
    },
    {
      'name': 'Maroon Women Sling Bag',
      'url': 'assets/profile_images/Bag.png',
      'Price': '896',
    },
    {
      'name': 'QUESTAR 2',
      'url': 'assets/profile_images/Questar.png',
      'Price': '4,079',
    },
    {
      'name': 'Texum TVC-10',
      'url': 'assets/profile_images/vacuum-cleaner.png',
      'Price': '3,399',
    },
    {
      'name': 'Men-Colorblock ',
      'url': 'assets/profile_images/Men-Colorblock.png',
      'Price': '979',
    },
    {
      'name': 'RisingStar 250 ',
      'url': 'assets/profile_images/RisingStar.png',
      'Price': '299',
    }
  ];

  List<Map<String, String>> searchedRecentlyItems = [
    {
      'name': 'realme 12 Pro 5G ',
      'url': 'assets/profile_images/searched1.png',
      'Price': '85000'
    },
    {
      'name': 'Asus Tuf f15 ',
      'url': 'assets/profile_images/searched3.png',
      'Price': '85000'
    },
    {
      'name': 'Sneeker',
      'url': 'assets/profile_images/searched2.png',
      'Price': '750'
    },
    {
      'name': 'Motorola edge ',
      'url': 'assets/profile_images/searched4.png',
      'Price': '25550'
    },
  ];

  List<Map<String, String>> likedItems = [
    {
      'name': 'realme 12 Pro 5G ',
      'url': 'assets/profile_images/Bag.png',
      'Price': '85000'
    },
    {
      'name': 'Helmet',
      'url': 'assets/profile_images/Helmet.png',
      'Price': '2550'
    },
    {
      'name': 'Game Controller',
      'url': 'assets/profile_images/Controller.png',
      'Price': '5200'
    },
    {
      'name': 'Game Controller',
      'url': 'assets/profile_images/Gamepad.png',
      'Price': '5800'
    },
  ];
}
