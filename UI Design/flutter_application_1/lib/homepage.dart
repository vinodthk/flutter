import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          color: Colors.white24,
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Hello Yahya",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.black87),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "What do you want to eat ?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black54),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 80,
                        width: 80,
                        child: Icon(
                          Icons.favorite_border,
                          size: 40,
                          color: Colors.deepOrange[500],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Fovorite',
                          style: TextStyle(color: Colors.black54, fontSize: 17),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 80,
                        width: 80,
                        child: Icon(
                          Icons.call_made_sharp,
                          size: 40,
                          color: Colors.deepOrange[500],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Cheap',
                          style: TextStyle(color: Colors.black54, fontSize: 17),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 80,
                        width: 80,
                        child: Icon(
                          Icons.trending_up,
                          size: 40,
                          color: Colors.deepOrange[500],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Trend',
                          style: TextStyle(color: Colors.black54, fontSize: 17),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 80,
                        width: 80,
                        child: Icon(
                          Icons.more_horiz_sharp,
                          size: 40,
                          color: Colors.deepOrange[500],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'More',
                          style: TextStyle(color: Colors.black54, fontSize: 17),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Today's Promo",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black87),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 60,
                  ),
                  child: Text(
                    "See all",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.redAccent),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
