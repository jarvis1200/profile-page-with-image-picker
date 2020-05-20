import 'dart:io';

import 'package:flutter/material.dart';

import 'createProfile.dart';
import 'package:image_picker/image_picker.dart';


void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));




 class ImageCapture extends StatefulWidget {
   ImageCapture({Key key, this.title}): super(key: key);
   final String title;
   @override
    _ImageCaptureState createState() => _ImageCaptureState();
}

class  _ImageCaptureState extends State<ImageCapture> {
File imageuri ;
Future getImageFromGallery() async{
  var image = await ImagePicker.pickImage(source: ImageSource.gallery);
  setState(() {
  imageuri = image;});
}


  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File imageuri;
  
  Future getImageFromGallery() async{
  var image = await ImagePicker.pickImage(source: ImageSource.gallery);
  setState(() {
  imageuri = image;});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: <Widget>[
          RaisedButton(
              child: Icon(Icons.add_to_queue),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateProfile()));
              })
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              border: Border.all(
                width: 3.0,
                color: Colors.black,
              ),
            ),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width / 1,
            height: 400,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                     
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(60), border:Border.all(
                            width:2.0,
                            color:Colors.black
                          ),
                             ),width: 270,height: 300,
                           child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.all(20),
                              child: InkWell(onTap: () => getImageFromGallery(),
                      
                                                                              child: CircleAvatar(radius: 60,
                                                      child:Icon(Icons.add_a_photo),
                
                
                                                  
                                                ),
                                              ),
                                              ),
                                              SizedBox(height:20),
                                              Text('Apple',style: TextStyle(
                                                fontSize:30,color:Colors.black,fontFamily:'bold')
                                              )
                                            ], 
                                           ),
                                        ),
                SizedBox(width:20),
                                         Container(
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(60), border:Border.all(
                                            width:2.0,
                                            color:Colors.black
                                          ),
                                             ),width: 270,height: 300,
                                           child: Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.all(20),
                                           child:Title(color: Colors.black, child: Text('Apple',style:TextStyle(fontSize:35,fontFamily: 'bold',color: Colors.black))  )
                                              ),
                                              
                                              Text('Apple',style: TextStyle(
                                                fontSize:30,color:Colors.black,)
                                              )
                                            ], 
                                           ),
                                        ),
                                      
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
  }
}
