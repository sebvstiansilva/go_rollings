import 'package:flutter/material.dart';

import 'dart:ui';

class GetStartedPage extends StatelessWidget {

  final subTitleStyle = TextStyle(
      color: Color.fromRGBO(45, 64, 89, 0.7),
      fontSize: 24.0,
      fontFamily: 'Ubuntu',
      fontWeight: FontWeight.w500
      
    );

  final titleStyle   = TextStyle(
      color: Color(0xFF2D4059),
      fontSize: 36.0,
      fontFamily: 'Ubuntu',
      fontWeight: FontWeight.w400
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          _page1(),
          _page2() 
        ],
      )
    );
  }

 Widget _page1() {
   return Stack(
     children: [
      _background(),
      _texts('Go Rollings!', 'Bienvenido'),
      Padding(
        padding: const EdgeInsets.only( bottom: 16.0 ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _startButton(),
            ],
          ),
        ),
      )
     ],
   );
 }

 Widget _page2() {
   return Stack(
     children: [
       _background(),
       _texts('Go Rollings!', 'Crear cuenta'),

     ],
   );
 }

  Widget _background() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage('assets/img/bg.png'),
      ),
    );
  }

  Widget _texts(String subtitle, String title) {

    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric( horizontal: 32.0, vertical: 32.0 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Text(subtitle, style: subTitleStyle,),
            Text(title, style: titleStyle,),

          ],
        ),
      ),
    );
  
  }

  Widget _startButton() {
    return RawMaterialButton(
      onPressed: () {},
      shape: StadiumBorder(),
      fillColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 130.0,
          vertical: 20.0
        ),
        child: Text(
          'Comenzar!',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(45, 64, 89, 1)
          ),
        ),
      ),
    );
  }

}