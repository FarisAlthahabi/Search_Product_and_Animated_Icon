import 'package:flutter/material.dart';
import 'package:search_product_and_animation/model/product_model.dart';
import 'package:search_product_and_animation/service/product_service.dart';

void main() async {
  // List<Product> products = await getData();
  // print(products[0].id);

  runApp(const MyApp());
}

TextEditingController controller = TextEditingController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchProduct(),
    );
  }
}

class SearchProduct extends StatefulWidget {
  const SearchProduct({super.key});

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  double size = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.search),
          title: Container(
            width: 400,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  label: Text('Where to?'),
                  hintText: 'Anywhere, Anytime, Add guest',
                ),
              ),
            ),
          ),
          actions: [Icon(Icons.settings)],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.face_5_sharp,
                          ),
                          Text('data')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.umbrella,
                          ),
                          Text('data'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.stairs_outlined,
                          ),
                          Text('Beach'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.landscape_outlined,
                          ),
                          Text('data'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Image.asset('assets/Rectangle 2.png'),
                Positioned(
                  right: 10,
                  top: 10,
                  child: IconButton(
                    color: Colors.red,
                    icon: Icon(
                      Icons.favorite,
                      size: size,
                    ),
                    onPressed: () {
                      setState(() {
                        size += 20;
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Apapa, Asia',
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('1,669 kilometers', textAlign: TextAlign.start),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('JUl 2 - 7', textAlign: TextAlign.start),
            ),
          ],
        ));
  }
}
