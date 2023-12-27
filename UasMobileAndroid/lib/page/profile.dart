import 'package:flutter/material.dart';
import 'package:uas/widget/album.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          BestMusic(),
           MusicAlbum(),
           Cok(),
           NewSection(),
        ],
      ),
    );
  }
}

class NewSection extends StatelessWidget {
  const NewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(),
          SizedBox(
            height: 200,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return GridItem(
                  imagePath: index == 0 ? 'assets/c.jpg' : 'assets/c2.jpg',
                  itemName: index == 0 ? "Queen's Concert |" : 'Blue Jazz Concert |',
                  price: index == 0 ? 125 : 199,
                  description: 'Buy Ticket'
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String imagePath;
  final String itemName;
  final double price;
  final String description;

  const GridItem({
    required this.imagePath,
    required this.itemName,
    required this.price,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white,),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            height: 110,
            width: 200,
          ),
          ),
          
          const SizedBox(height: 10),
          Text(
            itemName,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
            //textAlign: TextAlign.left,
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            '\$ $price',
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
         
        ],
      ),
    );
  }
}

class Cok extends StatelessWidget {
  const Cok({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
     padding: EdgeInsets.only(left:15, right: 15, ),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text(
           'Rock music is a genre of popular music. it developed during and after the 1960s in the United Kingdom.',
           style: TextStyle(
             fontSize: 20,
             color: Colors.grey,
           ),
           textAlign: TextAlign.center,
         ),
       ],

     ),
              );
  }
}

class MusicAlbum extends StatelessWidget {
  const MusicAlbum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
     padding: EdgeInsets.only(top: 15),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text(
           'Music Album',
           style: TextStyle(
             fontSize: 30,
           ),
         ),
       ],
     ),
              );
  }
}

class BestMusic extends StatelessWidget {
  const BestMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20,),
      child: Row(
        children: [
          Album(image: AssetImage('assets/dj.jpg'),),
          SizedBox(width: 20),
          Album(image: AssetImage('assets/dj2.jpg'),),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}