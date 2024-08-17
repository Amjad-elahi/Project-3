import 'package:flutter/material.dart';

import 'widgets_of_home_screen/unit1.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbf5f2),
       appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(75),
              child: Container(
                height: 71,
                width: 428,
                color: const Color(0xffE5E5E5),
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 47)),
                    Image.asset(
                      'assets/home_screen_icons/fire.png',
                      width: 25,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    const Text(
                      "3",
                      style: TextStyle(color: Color(0xffEB9F4A), fontSize: 20),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 50)),
                    Image.asset(
                      'assets/home_screen_icons/box.png',
                      width: 25,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    const Text(
                      "1432 XP",
                      style: TextStyle(color: Color(0xff338F9B), fontSize: 20),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 50)),
                    const Icon(
                      Icons.favorite,
                      color: Color(0xffDC3F00),
                      size: 35,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    Image.asset(
                      'assets/home_screen_icons/infinite.png',
                      width: 35,
                    ),
                  ],
                ),
              ))),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Padding(padding: EdgeInsets.only(top: 80, left: 10)),
                const Text("Logical reasoning" , style: TextStyle(fontSize: 30),),
                const Padding(padding: EdgeInsets.only(left: 30, right: 20)),
                Image.asset('assets/home_screen_icons/crown.png', width: 25,),
                const Text("18/40", style: TextStyle(fontSize: 15)),
                const Padding(padding: EdgeInsets.only(left: 30,)),
              ],),
              const Unit1(value: 0.45,),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Padding(padding: EdgeInsets.only(top: 80, left: 10)),
                const Text("Artistic thinking" , style: TextStyle(fontSize: 30),),
                const Padding(padding: EdgeInsets.only(left: 30, right: 20)),
                Image.asset('assets/home_screen_icons/crown.png', width: 25,),
                const Text("35/40", style: TextStyle(fontSize: 15)),
                const Padding(padding: EdgeInsets.only(left: 30,)),
              ],),
              const Unit1(value: 0.8,),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Padding(padding: EdgeInsets.only(top: 80, left: 10)),
                const Text("Verbal skills" , style: TextStyle(fontSize: 30),),
                const Padding(padding: EdgeInsets.only(left: 60, right: 40)),
                Image.asset('assets/home_screen_icons/crown.png', width: 25,),
                const Text("3/40", style: TextStyle(fontSize: 15)),
                const Padding(padding: EdgeInsets.only(left: 30,)),
              ],),
              const Unit1(value: 0.2,),
            ],
          ),
        ),
      ),
    );
  }
}