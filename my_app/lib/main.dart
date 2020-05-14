// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: FirstPage(),
        
      ),
    );
  }
}

class BodyLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _myList(context);
  }

  Widget _myList(BuildContext context){
    var province = ['Gauteng','Free State'];
    return ListView.separated(itemBuilder: (context, index) {
      return ListTile(
        title: Text(province[index]),
      );
    }, separatorBuilder: (context, index){
      return Divider();
    }, itemCount: province.length);

  }
  
  

}

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(child: RaisedButton(
        child: Text('Click Here!'),
        onPressed: () {
         Navigator.push(context,MaterialPageRoute(builder: (context) => SecondPage()));
        },
      )),
    );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(child: RaisedButton(
        child: Text('Go Back!'),
        onPressed: () {
         Navigator.pop(context);
        },
      )),
    );
  }
}