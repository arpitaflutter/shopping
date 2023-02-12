import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List star1 = [
    "5.0 ",
    "4.9",
    "4.7",
    "4.8",
    "4.2",
    "4.3",
  ];

  List star2 = [
    "4.1",
    "4.2",
    "4.5",
    "4.8",
    "4.1",
    "4.0",
  ];

  List name1 = [
    "SHOES",
    "TOP",
    "HODIE",
    "COMBO",
    "SHRUG",
    "WATCH"
  ];

  List name2 = [
    "TSHIRTS",
    "BLAZER",
    "JEANS",
    "JACKET",
    "HOT WEAR",
    "SHIRT"
  ];

  List pr1 = [
    "\$30.33",
    "\$40.00",
    "\$70.00",
    "\$56.27",
    "\$90.99",
    "\$99.99",
  ];

  List pr2 = [
    "\$52.00",
    "\$99.99",
    "\$72.30",
    "\$60.90",
    "\$45.90",
    "\$25.33",
  ];

  List im1 = [
    "assets/images/im1.jpg",
    "assets/images/ig2.webp",
    "assets/images/ig3.jpg",
    "assets/images/ig4.jpg",
    "assets/images/ig5.jpg",
    "assets/images/ig6.jpg",
  ];

  List im2 = [
    "assets/images/ig7.jpg",
    "assets/images/ig8.jpg",
    "assets/images/ig9.jpg",
    "assets/images/ig10.jpg",
    "assets/images/ig11.jpg",
    "assets/images/ig12.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("SHOPPING GALLERY UI",style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.indigoAccent,
        ),
        body: Container(
          height: double.infinity,width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.indigoAccent,
                Colors.deepPurpleAccent,
              ],
            )
          ),
          child: SingleChildScrollView(
            child: Column(
              children: im1.asMap().entries.
                        map((e) => theme(star1[e.key], star2[e.key], name1[e.key], name2[e.key], pr1[e.key], pr2[e.key], im1[e.key], im2[e.key]))
                        .toList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget theme(String s1,String s2,String n1,String n2,String p1,String p2,String i1,String i2)
  {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Row(
        children: [
          Container(
            height: 220,width: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 27,width: 55,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("$s1 ",style: TextStyle(color: Colors.white)),
                      Icon(Icons.star,color: Colors.white,size: 10,),
                    ],
                  ),
                ),
                Image.asset("$i1",fit: BoxFit.cover,height: 140),
                Spacer(),
                Container(
                  height: 50,width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text("$n1",style: TextStyle(color: Colors.white,fontSize: 20)),
                        Spacer(),
                        Text("$p1",style: TextStyle(color: Colors.white,fontSize: 20)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20,),
          Container(
            height: 220,width: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 27,width: 55,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("$s2 ",style: TextStyle(color: Colors.white)),
                      Icon(Icons.star,color: Colors.white,size: 10,),
                    ],
                  ),
                ),
                Image.asset("$i2",fit: BoxFit.cover,height: 140),
                Spacer(),
                Container(
                  height: 50,width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text("$n2",style: TextStyle(color: Colors.white,fontSize: 20)),
                        Spacer(),
                        Text("$p2",style: TextStyle(color: Colors.white,fontSize: 20)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
