import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gamestore/Cart_Page.dart';
import 'package:gamestore/Detail_Page.dart';
import 'package:gamestore/icons.dart';

import 'Models/Cart_Model.dart';
class HomePage extends StatefulWidget {
  List<dynamic>? cart=[];
  HomePage({this.cart});
  //List<dynamic>? cart;
  //HomePage({Key? key,this.passt}):super(key:key);
  //const Ho({Key? key,this.passt}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Cart ccart=Cart();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        //statusBarBrightness: Brightness.light,
            statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark
      )
    );
  }
  List<dynamic> gamelogo=[
    'https://c4.wallpaperflare.com/wallpaper/157/748/883/assassin-s-creed-valhalla-assassin-s-creed-viking-axe-video-games-hd-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/740/918/401/digital-art-artwork-red-dead-redemption-red-dead-redemption-2-arthur-morgan-hd-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/54/66/505/grand-theft-auto-v-gta-gta-5-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/857/611/652/the-witcher-the-witcher-3-wild-hunt-geralt-of-rivia-yennefer-of-vengerberg-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/273/87/591/battlefield-v-battlefield-5-video-games-world-war-wallpaper-preview.jpg',
  ];
  List<dynamic> overview=[
    "Assassin's Creed Valhalla is a 2020 action role-playing video game developed by Ubisoft Montreal and published by Ubisoft. It is the twelfth major installment in the Assassin's Creed series, and the successor to 2018's Assassin's Creed Odyssey.",
    "Red Dead Redemption 2[a] is a 2018 action-adventure game developed and published by Rockstar Games. The game is the third entry in the Red Dead series and is a prequel to the 2010 game Red Dead Redemption.The story is set in  1899 in a fictionalized representation of the Western, Midwestern, and Southern United States and follows outlaw Arthur  Morgan, a member of the Van der Linde gang.",
    "Grand Theft Auto V is a 2013 action-adventure game developed by Rockstar North and published by Rockstar Games. It is the first main entry in the Grand Theft Auto series since 2008's Grand Theft Auto IV.",
    "The Witcher 3: Wild Hunt[a] is an action role-playing game developed by Polish developer CD Projekt Red, and first published in 2015. It is the sequel to the 2011 game The Witcher 2: Assassins of Kings and the third main installment in The Witcher video game series, played in an open world with a third-person perspective. ",
    "Battlefield V is a first-person shooter video game developed by DICE and published by Electronic Arts. Battlefield V is the sixteenth installment in the Battlefield series and the successor to 2016's Battlefield 1. It was released worldwide for Microsoft Windows, PlayStation 4, and Xbox One on November 20, 2018."
  ];
  List<dynamic> price=[
    '\$20.00',
    '\$18.00',
    '\$12.00',
    '\$14.00',
    '\$16.00'
  ];
  List<dynamic> title=[
    "Ac's Valhalla",
    'Red Dead Redemption',
    'Grant Theft Auto V',
    'Witcher 3',
    'Battlefield V'
  ];
  List<dynamic> company=[
    'Ubisoft Montreal',
    'Rockstar Games',
    'Rockstar Games',
    'CD Projekt',
    'EA Games'
  ];
  @override
  Widget build(BuildContext context) {
    var screenheight=MediaQuery.of(context).size.height;
    var screenwidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(child: GestureDetector(
        child: Container(
          height: screenheight,
          width: screenwidth,
          child: Column(
            children: [
              SizedBox(height: screenheight*0.04,),
              Container(
                height: screenheight*0.08,
                width: screenwidth*0.85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height: screenheight*0.07,
                      width: screenwidth*0.6,
                      //color:Colors.grey,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: (){},
                              splashRadius: 5,
                              icon: Icon(Icons.search)
                          ),
                          Container(
                            // margin: EdgeInsets.only(
                            //   //bottom: 5,
                            //   top: 5
                            // ),
                              //color: Colors.red,
                              width: screenwidth*0.466,
                              child: TextFormField(
                                showCursor: false,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Adventure Game',
                                  hintStyle: TextStyle(
                                    letterSpacing: 1.5,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  )
                                ),
                              ))
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Cartpage()));
                          //print(cart[0]);
                          //print(ccart.cartmodel[0]);
                          },
                        splashColor: Colors.transparent,
                        splashRadius: 1,
                        icon: Icon(Equalizer.eq,size: 20,
                        color: Colors.black38,
                        )
                    )
                  ],
                ),
                //color: Colors.red,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  //color: Colors.red,
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5
                  )
                ),
              ),
              SizedBox(height: screenheight*0.08,),
              Container(
                margin: EdgeInsets.only(left: 25),
                child: Row(children: [Text('Found 5 results',
                style: TextStyle(
                  fontWeight: FontWeight.w500,

                ),
                )]),
              ),
              SizedBox(height: screenheight*0.02,),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 5,right: 5),
                  height: screenheight*1,
                  width: screenwidth*1,
                  //color: Colors.red,
                  child: ListView.builder(
                    itemCount: gamelogo.length,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(
                            image: gamelogo[index],
                            price: price[index],
                            company: company[index],
                            title: title[index],
                            overview: overview[index]
                          )));
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: screenheight*0.2,
                          width: screenwidth*0.5,
                          //color: Colors.blue,
                          child: Row(children: [
                            Container(
                              margin: EdgeInsets.all(15),
                              //color: Colors.purple,
                              height: screenheight*0.15,
                              width: screenwidth*0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                //color: Colors.white,
                                image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: NetworkImage(
                                    gamelogo[index].toString()
                                  )
                                )
                              ),
                            ),
                            SizedBox(width: screenwidth*0.05,),
                            Container(
                              height: screenheight*0.15,
                              width: screenwidth*0.5,
                              //color: Colors.purple,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(children: [Text(title[index],style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),)]),
                                  SizedBox(height: screenheight*0.008,),
                                  Row(children: [Text(company[index] ,style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                    fontSize: 12
                                  ),)]),
                                  SizedBox(height: screenheight*0.008,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.star,
                                          size: 20,
                                            color: Colors.red,
                                          ),
                                          Text(price[index],
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold
                                          ),
                                          )
                                        ],
                                      ),
                                      Text('\$ 20.00',
                                        style: TextStyle(
                                            color: Colors.red,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
