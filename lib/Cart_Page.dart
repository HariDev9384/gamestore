import 'package:flutter/material.dart';
import 'Models/Cart_Model.dart';
class Cartpage extends StatefulWidget {
  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  Cart currentcart=Cart();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 100,
        width: 100,
        child: InkWell(child: Icon(Icons.add),
        onTap: (){
          print('inside from cartpage ${currentcart.ct}');
        },
        ),
      ),
    );
  }
}
