

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


void main() async{
  runApp(MyApp());
}

 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: ImageCapture(),
       
     );
   }
 }   
 class ImageCapture extends StatefulWidget {
   ImageCapture({Key key, this.title}): super(key: key);
   final String title;
   @override
    _ImageCaptureState createState() => _ImageCaptureState();
}

class _ImageCaptureState extends State<ImageCapture> {
  /// Active image file
  File _image;

Future getImageFromGallery() async{
  var image = await ImagePicker.pickImage(source: ImageSource.gallery);
  setState(() {
    _image = image;
  });
}


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
appBar: AppBar(title:
Text('pick the image')
),
body: ListView(
  children: <Widget>[
    Container(
      width:MediaQuery.of(context).size.width/2,
      height: 200,
      child: Center(
        child: _image == null
        ? Text('no image selected')
        : Image.file(_image),
      ),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FloatingActionButton(onPressed: getImageFromGallery,
        tooltip: 'pick image',
        child: Icon(Icons.add_a_photo),
        ),
      ],
    )   
  ],
) ,
    );
  }

}

  
