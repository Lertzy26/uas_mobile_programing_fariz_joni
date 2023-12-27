import 'package:flutter/material.dart';

class ShopePage extends StatefulWidget {
  const ShopePage({super.key});

  @override
  State<ShopePage> createState() => _ShopePageState();
}

class _ShopePageState extends State<ShopePage> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Shopping Cart'),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const[
          Icon(
            Icons.notifications,
            size: 35,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.shopping_basket_rounded,
              size: 35,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 223, 223, 223),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30, bottom: 20),
                child: RichText(
                text: TextSpan(
                  text: 'Cart Subtotal (5 items): ',
                  style: const TextStyle(fontSize:20, )
                  .copyWith(color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(
                      text: '\$725',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold, // Mengatur warna teks menjadi merah
                      ),
                    ),
                  ],
                ),
                        ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity, // Set the width of the container to match the screen width
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your logic for "Proceed to Checkout" button here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 108, 2, 238),
                      shape: const BeveledRectangleBorder(), // Set the button background color to purple
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Proceed to Checkout',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold, // Set the text color to white
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Container(
                  height: 180,
                  //width: 400,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Image.asset('assets/g.jpg',
                                height: 130,
                                width: 130,
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Discover What's New In",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Beauty And Rec...",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text("In Stock",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 15,
                                          ),),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 130),
                                        child: Column(
                                          children: [
                                            Text("\$ 180",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 15,
                                            ),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 35,
                                    width: 130,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                    color: const Color.fromARGB(255, 16, 11, 51),
                                    ),
                                    child: const Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15, top: 8),
                                          child: Column(
                                            children: [
                                              Column(
                                                children: [
                                                  Text('01',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold
                                                  ),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 60),
                                          child: Column(
                                                  children: [
                                                    Icon(Icons.arrow_drop_down_rounded,
                                                    color: Colors.white,
                                                    size: 35,)
                                                  ],
                                                ),
                                        )
                                      ],
                                    )
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 35,
                                    width: 80,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                    color: const Color.fromARGB(255, 16, 11, 51),
                                    ),
                                    child: const Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15, top: 8),
                                          child: Column(
                                            children: [
                                              Column(
                                                children: [
                                                  Text('DELETE',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold
                                                  ),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 35,
                                  width: 145,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromARGB(255, 16, 11, 51),
                                  ),
                                  child: const Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15, top: 8),
                                        child: Column(
                                          children: [
                                            Column(
                                              children: [
                                                Text('SAVE FOR LATER',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                                ),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Container(
                  height: 180,
                  //width: 400,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Image.asset('assets/g2.jpg',
                                height: 130,
                                width: 130,
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Carry the Charm Of New",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Orleans with you...",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text("In Stock",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 15,
                                          ),),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 130),
                                        child: Column(
                                          children: [
                                            Text("\$ 230",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 15,
                                            ),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 35,
                                    width: 130,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                    color: const Color.fromARGB(255, 16, 11, 51),
                                    ),
                                    child: const Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15, top: 8),
                                          child: Column(
                                            children: [
                                              Column(
                                                children: [
                                                  Text('01',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold
                                                  ),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 60),
                                          child: Column(
                                                  children: [
                                                    Icon(Icons.arrow_drop_down_rounded,
                                                    color: Colors.white,
                                                    size: 35,)
                                                  ],
                                                ),
                                        )
                                      ],
                                    )
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 35,
                                    width: 80,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                    color: const Color.fromARGB(255, 16, 11, 51),
                                    ),
                                    child: const Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15, top: 8),
                                          child: Column(
                                            children: [
                                              Column(
                                                children: [
                                                  Text('DELETE',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold
                                                  ),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 35,
                                  width: 145,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromARGB(255, 16, 11, 51),
                                  ),
                                  child: const Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15, top: 8),
                                        child: Column(
                                          children: [
                                            Column(
                                              children: [
                                                Text('SAVE FOR LATER',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                                ),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Container(
                  height: 180,
                  //width: 400,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Colors.white,),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Image.asset('assets/g3.jpg',
                                height: 130,
                                width: 130,
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Blue Nile is The World's",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Leading diamond je...",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text("In Stock",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 15,
                                          ),),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 130),
                                        child: Column(
                                          children: [
                                            Text("\$ 90",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 15,
                                            ),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 35,
                                    width: 130,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                    color: const Color.fromARGB(255, 16, 11, 51),
                                    ),
                                    child: const Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15, top: 8),
                                          child: Column(
                                            children: [
                                              Column(
                                                children: [
                                                  Text('01',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold
                                                  ),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 60),
                                          child: Column(
                                                  children: [
                                                    Icon(Icons.arrow_drop_down_rounded,
                                                    color: Colors.white,
                                                    size: 35,)
                                                  ],
                                                ),
                                        )
                                      ],
                                    )
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 35,
                                    width: 80,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                    color: const Color.fromARGB(255, 16, 11, 51),
                                    ),
                                    child: const Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15, top: 8),
                                          child: Column(
                                            children: [
                                              Column(
                                                children: [
                                                  Text('DELETE',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold
                                                  ),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 35,
                                  width: 145,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromARGB(255, 16, 11, 51),
                                  ),
                                  child: const Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15, top: 8),
                                        child: Column(
                                          children: [
                                            Column(
                                              children: [
                                                Text('SAVE FOR LATER',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                                ),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Container(
                  height: 180,
                  //width: 400,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Colors.white,),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Image.asset('assets/g4.jpg',
                                height: 130,
                                width: 130,
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("The perfect diamond",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("engagement ring...",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text("In Stock",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 15,
                                          ),),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 130),
                                        child: Column(
                                          children: [
                                            Text("\$ 300",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 15,
                                            ),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 35,
                                    width: 130,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                    color: const Color.fromARGB(255, 16, 11, 51),
                                    ),
                                    child: const Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15, top: 8),
                                          child: Column(
                                            children: [
                                              Column(
                                                children: [
                                                  Text('01',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold
                                                  ),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 60),
                                          child: Column(
                                                  children: [
                                                    Icon(Icons.arrow_drop_down_rounded,
                                                    color: Colors.white,
                                                    size: 35,)
                                                  ],
                                                ),
                                        )
                                      ],
                                    )
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 35,
                                    width: 80,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                    color: const Color.fromARGB(255, 16, 11, 51),
                                    ),
                                    child: const Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15, top: 8),
                                          child: Column(
                                            children: [
                                              Column(
                                                children: [
                                                  Text('DELETE',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold
                                                  ),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 35,
                                  width: 145,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromARGB(255, 16, 11, 51),
                                  ),
                                  child: const Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15, top: 8),
                                        child: Column(
                                          children: [
                                            Column(
                                              children: [
                                                Text('SAVE FOR LATER',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                                ),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}