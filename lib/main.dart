

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(

        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //here I'm going to create a custom widget for the items box
  Widget Items(String name, String category, String imgUrl, String price){
    return InkWell( //this widget will make your container clickable
      onTap: (){},

      child: Container(
        width: 180.0,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white
        ),
        child: Column(
          children: [
            Image(
                image: NetworkImage(imgUrl),
              width: 170.0,
              height: 160.0,
              alignment: Alignment.center,
            ),

            Text(name,style: TextStyle(fontSize: 22.0),),

            Text(category,style: TextStyle(fontSize: 18.0,color: Colors.grey),),

            Text('$price',style: TextStyle(fontSize: 22.0,color: Color(0xFFFF9900)),),
          ],
        ),
      ),
    );
  }

  //Now I'm going to import a list of images that I collected from online resource
  //you can choose the image that you want and add them into the list
  List<String> imgUrl = [
    'https://content3.jdmagicbox.com/comp/def_content/suitings-shirtings-retailers/shutterstock-1069078847-suitings-shirtings-retailers-18-y94iv.jpg',
    'https://content3.jdmagicbox.com/comp/def_content/women-boutiques/shutterstock-786703210-women-boutiques-11-b4sbr.jpg',
    'https://3.imimg.com/data3/GG/DH/MY-11185633/mens-sutting-shirting-250x250.jpeg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTseBP3ljota5c2cZCNLxd2s4pT4nRy2p44gG-yaGQeY9GAQXpR1U_n5NuKcQ5CXYeH4_w&usqp=CAU',
    'https://media.istockphoto.com/photos/stylish-business-clothing-for-businessman-picture-id504742864?k=20&m=504742864&s=612x612&w=0&h=nuy8uRAuB6xVTfuXeTOd8wFSBWwNNGZ0nK1qViA-Nv0=',
    'https://media.istockphoto.com/photos/mens-clothing-and-personal-accessories-picture-id864505242?k=20&m=864505242&s=612x612&w=0&h=bg5e9lCFMleD0LVGMJcpbO0BXSILhjoW_sVxp83YmXM=',
     'https://media.istockphoto.com/photos/mens-accessories-picture-id626085868?k=20&m=626085868&s=612x612&w=0&h=M0UpHDmzleAF3NpPdGW5mhQ2XXrUQIRABrGp2koAUiI=',
    'https://images.pexels.com/photos/298863/pexels-photo-298863.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10161D),

      appBar: AppBar(
        backgroundColor: Color(0xFF222e3D),

        title: Text('Shopping App',style: TextStyle(color: Color(0xFFFF9900)),),
        centerTitle: true,
        
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.shopping_cart,color: Colors.white,)),
        ],
      ),

      body: SingleChildScrollView(

        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0,vertical: 20.0),

                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),

                      borderSide: BorderSide(color: Colors.transparent)
                    ),
                    prefixIcon: Icon(Icons.search,color: Colors.black,),
                    hintText: 'Search...',
                      fillColor: Colors.white,
                    filled: true
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('New Items..',style: TextStyle(fontSize: 28.0,color: Colors.white,),),
              ),

              //Now we will add the item list
              Container(
                width: double.infinity, //this line will make the container take the full width of the device
                height: 270.0, //when you want to create a list view you should precise the height and width of it's container

                child: ListView(
                  scrollDirection: Axis.horizontal, //this will make the list scroll horizontally
                  children: [
                    // Now let's an item to test
                    SizedBox(width: 10.0,),

                    Items('Shirt', 'Men', imgUrl[0], 'Fixed'),

                    SizedBox(width: 10.0,),

                    Items('Shirt', 'Men', imgUrl[1], 'Fixed'),

                    SizedBox(width: 10.0,),


                    Items('Shirt', 'Men', imgUrl[2], 'Fixed'),

                    SizedBox(width: 10.0,),

                    Items('Shirt', 'Men', imgUrl[3], 'Fixed'),

                    SizedBox(width: 10.0,),

                    Items('Shirt', 'Men', imgUrl[4], 'Fixed'),


                    SizedBox(width: 10.0,),

                    Items('Shirt', 'Men', imgUrl[5], 'Fixed'),


                    SizedBox(width: 10.0,),

                    Items('Shirt', 'Men', imgUrl[6], 'Fixed'),

                    SizedBox(width: 10.0,),

                    Items('Shirt', 'Men', imgUrl[7], 'Fixed'),

                    //Note that this is the ui of the app but you can easily implement a backend service via a rest api

                  ],
                ),
              ),

              // for the second of the app it's the same principle so let's just copy the first element's


              //let's add some space
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Recommended for you',style: TextStyle(fontSize: 28.0,color: Colors.white,),),
              ),

              //Now we will add the item list
              Container(
                width: double.infinity, //this line will make the container take the full width of the device
                height: 270.0, //when you want to create a list view you should precise the height and width of it's container

                child: ListView(
                  scrollDirection: Axis.horizontal, //this will make the list scroll horizontally
                  children: [
                    // Now let's an item to test
                    SizedBox(width: 10.0,),

                    Items('Shirt', 'Men', imgUrl[4], 'Fixed'),


                    SizedBox(width: 10.0,),

                    Items('Shirt', 'Men', imgUrl[5], 'Fixed'),


                    SizedBox(width: 10.0,),

                    Items('Shirt', 'Men', imgUrl[6], 'Fixed'),

                    SizedBox(width: 10.0,),

                    Items('Shirt', 'Men', imgUrl[7], 'Fixed'),

                    SizedBox(width: 10.0,),

                    Items('Shirt', 'Men', imgUrl[0], 'Fixed'),

                    SizedBox(width: 10.0,),

                    Items('Shirt', 'Men', imgUrl[1], 'Fixed'),

                    SizedBox(width: 10.0,),


                    Items('Shirt', 'Men', imgUrl[2], 'Fixed'),

                    SizedBox(width: 10.0,),

                    Items('Shirt', 'Men', imgUrl[3], 'Fixed'),

                    SizedBox(width: 10.0,),



                    //Note that this is the ui of the app but you can easily implement a backend service via a rest api

                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //Now I am going to add a bottom nav bar
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF10161d),
          selectedItemColor: Color(0xFFFF9900),
          unselectedItemColor: Colors.white,

          items: [
            //you should at least have two items with the icon and title or you will have an error

            BottomNavigationBarItem(

              icon: Icon(Icons.home),
              label: 'Home'
            ),


            BottomNavigationBarItem(
              icon: Icon(Icons.favorite,),
              label: 'Settings'
            ),


            BottomNavigationBarItem(
                icon: Icon(Icons.person,),
                label: 'Account'
            ),
          ]
      ),
    );
  }
}


