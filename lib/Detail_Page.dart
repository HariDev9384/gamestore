
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gamestore/Cart_Page.dart';
import 'package:gamestore/Home_Page.dart';
import 'package:gamestore/Models/Cart_Model.dart';
class DetailScreen extends StatefulWidget {
  var image;
  var title;
  var price;
  var company;
  var overview;

  DetailScreen({this.price,this.title,this.image,this.company,this.overview});
  // c(){
  //   print(ccarts(widg))
  // }
  @override
  _DetailScreenState createState() => _DetailScreenState();
}
Cart ncart=Cart();
//List<Cart> currentcarts=[];
// pass(){
//   Cartpage(carts: currentcarts);
// }
class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    var button='Add to cart';
    // final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));
    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Colors.blue,
      body: Container(
          height: height/1,
          width: width/1,
          color: Colors.white,
          child: Stack(
            children: [

              Positioned(
                child: Container(
                  height: height*0.3,
                  width: width*1,
                  decoration: BoxDecoration(
                    color: Colors.red,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(widget.image)
                      )
                  ),
                ),
              ),
              Positioned(
                top: height*0.26,
               //bottom: height*0.5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: height*1,
                  width: width*1,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)
                      ),
                      color: Colors.white
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height*0.03,),
                      Row(
                        children: [
                          Text(widget.title),
                        ],
                      ),
                      SizedBox(height: height*0.02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('PC & PLAYSTATION'),
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.add_circle))
                        ],
                      ),
                      SizedBox(height: height*0.02,),
                      Row(children: [Text('Overview',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      )],),
                      Container(
                        height: height*0.15,
                        width: width*1,
                        //color: Colors.red,
                        child: AutoSizeText(
                          widget.overview,
                          minFontSize: 10,
                          maxLines: 7,
                        ),
                      ),
                      //SizedBox(height: height*0.01,),
                      Container(
                        height: height*0.1,
                        //color: Colors.redAccent,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10,bottom: 10,left: 10),
                              height: height*0.2,
                              width: width*0.12,
                              //color: Colors.pink,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage('https://logodownload.org/wp-content/uploads/2020/10/epic-games-logo-0.png')
                                )
                              ),
                            ),
                            SizedBox(width: width*0.05,),
                            Row(
                              children: [
                                Container(
                                  width: width*0.3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Epic Games'),
                                      Text('Availble')
                                    ],
                                  ),
                                ),
                                Container(
                                  width: width*0.4,
                                  height: height*0.4,
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.red,),
                                      Icon(Icons.star,color: Colors.red),
                                      Icon(Icons.star,color: Colors.red),
                                      Icon(Icons.star,color: Colors.black26),
                                      Icon(Icons.star,color: Colors.black26)
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: height*0.02,),
                      Container(
                        height: height*0.1,
                        //color: Colors.redAccent,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10,bottom: 10,left: 10),
                              height: height*0.2,
                              width: width*0.12,
                              //color: Colors.pink,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black,
                                  image: DecorationImage(

                                      fit: BoxFit.contain,
                                      image: NetworkImage('https://findicons.com/files/icons/2788/circle/128/steam.png')
                                  )
                              ),
                            ),
                            SizedBox(width: width*0.05,),
                            Row(
                              children: [
                                Container(
                                  width: width*0.3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Steam'),
                                      Text('Availble')
                                    ],
                                  ),
                                ),
                                Container(
                                  width: width*0.4,
                                  height: height*0.4,
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.red,),
                                      Icon(Icons.star,color: Colors.red),
                                      Icon(Icons.star,color: Colors.red),
                                      Icon(Icons.star,color: Colors.red),
                                      Icon(Icons.star,color: Colors.black26)
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                //top: 50,
                  top: height*0.85,
                  // top: 20,
                  //bottom: 20,
                  child: Container(
                    height: height*1,
                    width: width*1,
                    padding: EdgeInsets.only(left: 15,right: 15),
                    //color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Price  ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                      //decoration: TextDecoration.lineThrough
                                    ),
                                  ),
                                  Text('\$30.00',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black45,
                                        decoration: TextDecoration.lineThrough
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: height*0.02,),
                              Container(
                                width: width*0.3,
                                //color: Colors.red,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${widget.price}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.red,
                                      letterSpacing: 0.8,
                                      fontWeight: FontWeight.bold
                                    ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Container(
                              width: width*0.4,
                              //color: Colors.red,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: ElevatedButton(
                                          onPressed: (){
                                            ncart.cartmodel.add(Cart(ct: widget.title));
                                            //currentcarts.add(Cart(ct: widget.title));
                                            //currentcarts=widget.title;
                                            print(ncart.cartmodel[0].ct);
                                            // pass();
                                            // HomePage(cart: currentcarts);
                                            // print('add in detailpage ${currentcarts[0].ct}');
                                            //HomePage(cart: widget.ccarts);

                                           ScaffoldMessenger.of(context).showSnackBar(
                                             SnackBar(
                                                 behavior: SnackBarBehavior.floating,
                                                 duration: Duration(seconds: 2),
                                                 width: width*0.4,
                                                 elevation: 2,
                                                 //margin: EdgeInsets.only(right: 10),
                                                 shape: RoundedRectangleBorder(
                                                   borderRadius: BorderRadius.circular(10)
                                                 ),
                                                 backgroundColor: Colors.red[400],
                                                 content: Row(
                                                   mainAxisAlignment: MainAxisAlignment.center,
                                                      // crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Text('Added to cart')
                                                      ],))
                                           );
                                          },
                                          child: Text(button,
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                          ),
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all<Color>(
                                           Colors.red
                                          ),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5)
                                            )
                                          )
                                        ),
                                        //color: Colors.red,

                                      ),
                                    )]
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)
                      )
                    ),
                  )),

            ],
          )
      ),
    );
  }
}