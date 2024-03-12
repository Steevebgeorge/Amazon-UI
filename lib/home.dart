import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              Container(
                height: 40,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 44, 226, 202),
                      Color.fromARGB(255, 174, 242, 212),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(Icons.pin_drop_outlined, size: 20),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Deliver To Steeve -- ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 13,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down_rounded,
                      size: 25,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Container(
                height: 90,
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 16, left: 10),
                              child: Image.network(
                                'https://1000logos.net/wp-content/uploads/2023/11/Amazon-Prime-Video-Logo-2017-500x281.png',
                                width: 90,
                              ),
                            ),
                            const Text(
                              'Prime',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 15),
                              child: Image.network(
                                'https://www.pngall.com/wp-content/uploads/1/Electronic.png',
                                width: 90,
                              ),
                            ),
                            const Text(
                              'Electronics',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 7, left: 15),
                              child: Image.network(
                                'https://m.media-amazon.com/images/I/71eUwDk8z+L._SX569_.jpg',
                                width: 60,
                                height: 65,
                              ),
                            ),
                            const Text(
                              'Electronics',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 15),
                              child: Image.network(
                                'https://w7.pngwing.com/pngs/343/207/png-transparent-iphone-x-iphone-8-plus-iphone-7-apple-iphone-gadget-electronics-mobile-phone.png',
                                width: 50,
                                height: 60,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Mobiles',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 2, left: 15),
                              child: Image.network(
                                'https://static.vecteezy.com/system/resources/previews/010/063/464/original/sale-70-icon-special-offer-discount-3d-render-png.png',
                                width: 80,
                                height: 70,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Top Deals',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 2, left: 15),
                              child: Image.network(
                                'https://m.media-amazon.com/images/I/51bR0PX1y9L._SX342_SY445_.jpg',
                                width: 80,
                                height: 70,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Books',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 2, left: 15),
                              child: Image.network(
                                'https://m.media-amazon.com/images/I/41-3p79ueuL._SX300_SY300_QL70_FMwebp_.jpg',
                                width: 80,
                                height: 70,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Toys',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
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
              // Carousel Slider
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: CarouselSlider(
                  items: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://images-eu.ssl-images-amazon.com/images/G/31/IMG21/Furniture/DIY/DIYBanner_1242x450.gif',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://images-eu.ssl-images-amazon.com/images/G/31/img24/Wireless/POCO/BrandDays/Ingress.gif',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Wireless/Gamex_LP/D27834556_IN_WLD_BAU_WirelessGamexTopbanner_1242x450_3.gif',
                              scale: 5),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://images-eu.ssl-images-amazon.com/images/G/31/img18/HomeImprovement/GW/BBS/5299-HI---Big-Bathroom-sale---Header-banner1.gif',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 200.0,
                    viewportFraction: 1,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 2000),
                    pauseAutoPlayOnTouch: true,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),

              Container(
                height: 300,
                color: const Color.fromARGB(255, 241, 233, 233),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Top deals For You',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Add the ListView below the Text widget
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
                                  for (Map<String, String> item in topItems)
                                    Column(
                                      children: [
                                        Card(
                                          child: Column(
                                            children: [
                                              ClipRRect(
                                                borderRadius: const BorderRadius
                                                    .vertical(
                                                    top: Radius.circular(15)),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Image.network(
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
                                                  padding: MaterialStateProperty
                                                      .all<EdgeInsetsGeometry>(
                                                    const EdgeInsets.only(
                                                        left: 50.0,
                                                        right:
                                                            50), // Set your desired padding here
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all<
                                                          Color>(
                                                    const Color.fromARGB(
                                                        255,
                                                        233,
                                                        245,
                                                        69), 
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
                color: const Color.fromARGB(255, 241, 233, 233),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Top Mobile Phones',
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
                                      for (Map<String, String> item in mobiles)
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
                                                            top:
                                                                Radius.circular(
                                                                    15)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10.0),
                                                      child: Image.network(
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
                                                                50), 
                                                      ),
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all<Color>(
                                                        const Color.fromARGB(
                                                            255,
                                                            233,
                                                            245,
                                                            69), 
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
                  ],
                ),
              ),
              Container(
                height: 290,
                color: const Color.fromARGB(255, 241, 233, 233),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(1),
                      child: Text(
                        'Top Laptops',
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
                                  for (Map<String, String> item in laptops)
                                    Column(
                                      children: [
                                        Card(
                                          color: Colors.white,
                                          child: Column(
                                            children: [
                                              ClipRRect(
                                                borderRadius: const BorderRadius
                                                    .vertical(
                                                    top: Radius.circular(15)),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      12.0),
                                                  child: Image.network(
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
                                                  padding: MaterialStateProperty
                                                      .all<EdgeInsetsGeometry>(
                                                    const EdgeInsets.only(
                                                        left: 50.0,
                                                        right:
                                                            50), 
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all<
                                                          Color>(
                                                    const Color.fromARGB(
                                                        255,
                                                        233,
                                                        245,
                                                        69), 
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
        ),
      ],
    );
  }

  List<Map<String, String>> topItems = [
    {
      'name': 'Shoes',
      'url':
          'https://freepngimg.com/thumb/shoes/27428-5-nike-shoes-transparent-background.png',
      'Price': '250'
    },
    {
      'name': 'Camera',
      'url':
          'https://freepngimg.com/thumb/camera/24443-6-photo-camera-image-thumb.png',
      'Price': '550'
    },
    {
      'name': 'Iphone',
      'url':
          'https://freepngimg.com/thumb/smartphone/73682-smartphone-apple-feature-4s-phone-iphone.png',
      'Price': '99950'
    },
    {
      'name': 'Kids Toy',
      'url':
          'https://freepngimg.com/thumb/toy/84381-funko-toy-titanfall-robot-download-free-image-thumb.png',
      'Price': '500'
    },
    {
      'name': 'Sneeker',
      'url':
          'https://freepngimg.com/thumb/shoes/28084-5-sneaker-transparent-image-thumb.png',
      'Price': '750'
    },
  ];

  List<Map<String, String>> mobiles = [
    {
      'name': 'realme 12 Pro 5G ',
      'url':
          'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/m/p/y/12-pro-5g-rmx3842-realme-original-imagxgnhafyjz8rb.jpeg?q=70&crop=false',
      'Price': '85000'
    },
    {
      'name': 'Motorola edge ',
      'url':
          'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/h/b/x/g04-pb130011in-motorola-original-imagy3tfvncuegaz.jpeg?q=70&crop=false',
      'Price': '25550'
    },
    {
      'name': 'POCO C55',
      'url':
          'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/a/6/f/-original-imagnb6nvnqz7hqq.jpeg?q=70&crop=false',
      'Price': '19990'
    },
    {
      'name': 'Vivo T2',
      'url':
          'https://rukminim2.flixcart.com/image/312/312/xif0q/mobile/u/1/h/-original-imagpfbvfu4p55n4.jpeg?q=70',
      'Price': '25500'
    },
    {
      'name': 'Infinix 8',
      'url':
          'https://rukminim2.flixcart.com/image/312/312/xif0q/mobile/z/9/6/-original-imagwfffndz6tfhk.jpeg?q=70',
      'Price': '25750'
    },
  ];

  List<Map<String, String>> laptops = [
    {
      'name': 'Asus Tuf f15 ',
      'url':
          'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/v/y/z/-original-imagtucnqsqpbvk6.jpeg?q=70',
      'Price': '85000'
    },
    {
      'name': 'HP 15s ',
      'url':
          'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/s/q/4/-original-imagwzwckttgdzsd.jpeg?q=70',
      'Price': '37990'
    },
    {
      'name': 'Hp Victus',
      'url':
          'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/8/i/j/-original-imagthcbgurdzwuc.jpeg?q=70',
      'Price': '66990'
    },
    {
      'name': 'Acer Predator',
      'url':
          'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/x/r/d/-original-imagp7w2wgf5ense.jpeg?q=70',
      'Price': '117900'
    },
    {
      'name': 'MsI GF63',
      'url':
          'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/b/r/k/-original-imagsz5x5x3vkt8c.jpeg?q=70',
      'Price': '45990'
    },
  ];
}
