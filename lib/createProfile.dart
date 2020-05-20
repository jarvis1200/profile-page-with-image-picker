import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreateProfile(),
    ));

class CreateProfile extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create profile'),   
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            
            decoration: BoxDecoration(
            ),
            height: MediaQuery.of(context).size.height - 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width / 4,
                  child: Card(
                    elevation: 4,
                    child: Container(
                      decoration: BoxDecoration(
                       border: Border(
                                bottom: BorderSide(
                                    width: 5.0, color: Colors.yellow)) 
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg'),
                              backgroundColor: Colors.deepPurple,
                              radius: 60,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Nizamudden',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width / 3,
                    child: Card(
                      elevation: 4,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 5.0, color: Colors.yellow))),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Details',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Qualification :',
                              style: TextStyle(fontFamily: 'Bold',
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
 Text('B.tech',style:TextStyle(color: Colors.black,fontSize:10)),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Role :',
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Trainer',
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Work Experience :',
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Skills :',
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Text('C,C++,Hacking',
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width / 3,
                  child: Card(
                    elevation: 4,
                    child: Container(
                      decoration: BoxDecoration(
                       border: Border(
                                bottom: BorderSide(
                                    width: 5.0, color: Colors.yellow)) 
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Contacts',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Nizam@gmail.com',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Phone',
                              style: TextStyle(
                                fontSize: 15,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text('1234567890',
                              style: TextStyle(
                                fontSize: 15,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Address',
                              style: TextStyle(
                                fontSize: 15,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text('DubaiMainroad ,Dubai')
                        ],
                      ),
                    ),
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
