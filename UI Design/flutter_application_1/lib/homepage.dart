import 'package:flutter/material.dart';
import 'package:flutter_application_1/fovoritebar.dart';
import 'package:flutter_application_1/lover_title.dart';
import 'package:flutter_application_1/title_name.dart';
import 'package:flutter_application_1/todays_promo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.white60,
        elevation: 0,
        title: Container(
          width: 250,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: TextField(
              decoration: InputDecoration(
                  //prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.arrow_drop_down_sharp),
                    onPressed: () {
                      /* Clear the search field */
                    },
                  ),
                  hintText: 'Search...',
                  border: InputBorder.none),
            ),
          )),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.circle_notifications_sharp,
              color: Colors.red,
              size: 40,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white10,
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            TitleName(),
            LowerTitle(),
            const SizedBox(
              height: 40,
            ),
            FovoriteBar(),
            const SizedBox(
              height: 20,
            ),
            TodaysPromo(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    alignment: const Alignment(0, 0),
                    height: 300,
                    width: 350,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/first.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              offset: const Offset(-5, 5),
                              blurRadius: 20,
                              spreadRadius: 4)
                        ]),
                    child: Image.asset('assets/images/first.jpg'),
                  ),
                  Image.network(
                      'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
