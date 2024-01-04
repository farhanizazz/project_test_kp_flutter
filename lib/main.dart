import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_test_kp_flutter/Widgets/item_card.dart';
import 'package:project_test_kp_flutter/datasets/carousel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_pin, color: Color(0xff393636),),
                  Text("Park Avenue, New York", style: TextStyle(color: Color(0xff4c4f4d), fontWeight: FontWeight.w600, fontSize: 15),)
                ],
              ),
              SizedBox(height: 25,),
              TextField(decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none
                  ),
                filled: true,
                fillColor: Color(0xFFF2F3F2),
                hintText: "Search Store"
              ),),
              SizedBox(height: 25,),
              Image.asset('assets/images/banner/banner.png'),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Exclusive Offer", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),),
                  Text("See all", style: TextStyle(
                    color: Colors.green[600],
                    fontWeight: FontWeight.w600
                  ),)
                ],
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ItemCard(image: '1', namaItem: 'Organic Bananas', price: 4.99, qty: 2,),
                    ItemCard(image: '1', namaItem: 'Organic Bananas', price: 4.99, qty: 2,)

                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
