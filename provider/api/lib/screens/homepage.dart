import 'package:api/provider/todo_provider.dart';
import 'package:api/screens/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String img = "https://www.foodchow.com/CuisineImages/";
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<TodoProvider>(context, listen: false).getAllTodos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("FoodChow API"),
      ),
      body: Consumer<TodoProvider>(
        builder: (context, value, child) {
          if (value.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: value.shop_list.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ItemWidget(
                                value.shop_list[index]["shop_name"].toString(),
                              )),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  // ignore: prefer_interpolation_to_compose_strings
                                  ("https://www.foodchow.com/CuisineImages/" +
                                      value.shop_list[index]["cuisine_image"]
                                          .toString()),
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2.0,
                                    spreadRadius: 1.0,
                                    color: Colors.grey)
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          value.shop_list[index]["shop_type"]
                                                      .toString() ==
                                                  "Veg"
                                              ? Icons.restaurant_menu
                                              : Icons.read_more_outlined,
                                          color: Colors.greenAccent,
                                        ),
                                        Text(
                                          value.shop_list[index]["shop_name"]
                                              .toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.kitchen),
                                        Text(
                                          value.shop_list[index]["cuisine"]
                                              .toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      value.shop_list[index]["delivery_method"]
                                          .toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.0,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              const CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Text(
                                  '4.0',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );

                /*ListTile(
                  
                  leading: CircleAvatar(
                    child: Text(value.shop_list[index]["shop_id"].toString()),
                  ),
                  title: Text(
                    value.shop_list[index]["shop_name"].toString(),
                  ),
                );*/
              },
            );
          }
        },
      ),
    );
  }
}
