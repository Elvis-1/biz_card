
import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard"),

      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
                     _getCard(),
                     _getAvatar()
            
          ],
        ),
      ),
    );
  }

 Container _getCard() {
    return Container(
       width: 350,
      height: 200,
      margin: EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(4.5),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Elvis Igiebor",
          style: TextStyle(
            fontSize: 20.9,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          ),
          Text("igieborelvis@gmail.com",

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_add_alt_outlined),
              Text("glad to build mobile apps"),
            ],
          ),
        ],
      ),
    );
 }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.redAccent),
        image: DecorationImage(image:NetworkImage("https://images.pexels.com/photos/1714208/pexels-photo-1714208.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
            fit:BoxFit.cover
        ),

      ),
    );
  }
}
