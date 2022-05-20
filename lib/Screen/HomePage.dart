import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/Repositories/list_repositories.dart';




class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List name = [];
  List filteredname = [];
  bool isSearching = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getlistdata();
  }

  getlistdata() async {
    var userdataresponse = await ListData().getgrapdata();
    name=filteredname=userdataresponse;
    print(name[0].name);
    print(name[0].dateOfBirth);
    print(name[0].eyeColour);
    print(name[0].hairColour);
    print(name[0].image);
    print(name[0].alive);

  }


  void _filterCountries(value) {
    setState(() {
      filteredname = name
          .where((country) =>
          country.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          child: ListView(
            children: <Widget>[

              Container(
                height: 50,
               decoration: BoxDecoration(
                 color: Colors.brown,
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                     
               ),
                child: Center(
                  child: Text("User Data",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),
                  ),
                ),
              ),
              
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black,width: 1)
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      width: MediaQuery.of(context).size.width - 80,
                      child: TextField(
                        onChanged: (value) {
                            _filterCountries(value);
                        },
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                            icon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            hintText: "Search Name Here",
                            hintStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                )
              ),

              Container(
                height: MediaQuery.of(context).size.height - 120 ,
                  child: filteredname.length > 0 ?
                  ListView.builder(
                    itemCount: filteredname.length,
                      itemBuilder: (BuildContext context, int index) {
                       return Container(
                         margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                         height: 150,
                         decoration: new BoxDecoration(
                           color: Colors.white,
                           shape: BoxShape.rectangle,
                           borderRadius: new BorderRadius.circular(5.0),
                           boxShadow: <BoxShadow>[
                             new BoxShadow(
                               color: Colors.grey,
                               blurRadius: 5.0,
                               offset: new Offset(0.0, 3.0),
                             ),
                           ],
                         ),
                         child: Row(
                           children: <Widget>[
                             Container(
                               height: 100,
                               width: 100,
                               child: filteredname[index].image == "" ?
                                Image(
                                  image:AssetImage('assest/noimagefound.jpg') ,
                                )
                               :
                               Image(
                                 image: NetworkImage(filteredname[index].image),
                               ),
                             ),

                             Container(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[

                                   Container(
                                     margin: EdgeInsets.only(top: 30),
                                     child: Row(
                                       children:<Widget>[
                                         Container(
                                           child: Text('Name :',
                                             style: TextStyle(
                                               color: Colors.black,
                                               fontWeight: FontWeight.w400,
                                               fontSize: 14
                                             ),

                                           ),
                                         ),
                                         Container(
                                           margin: EdgeInsets.only(left: 5),
                                           child: Text(filteredname[index].name,
                                             style: TextStyle(
                                                 color: Colors.black,
                                                 fontWeight: FontWeight.w400,
                                                 fontSize: 14
                                             ),

                                           ),
                                         ),
                                       ],
                                     ),
                                   ),

                                   Container(
                                     margin: EdgeInsets.only(top: 5),
                                     child: Row(
                                       children:<Widget>[
                                         Container(
                                           child: Text('Gender :',
                                             style: TextStyle(
                                                 color: Colors.black,
                                                 fontWeight: FontWeight.w400,
                                                 fontSize: 14
                                             ),

                                           ),
                                         ),
                                         Container(
                                           margin: EdgeInsets.only(left: 5),
                                           child: Text(filteredname[index].gender,
                                             style: TextStyle(
                                                 color: Colors.black,
                                                 fontWeight: FontWeight.w400,
                                                 fontSize: 14
                                             ),

                                           ),
                                         ),
                                       ],
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(top: 5),
                                     child: Row(
                                       children:<Widget>[
                                         Container(
                                           child: Text('Date Of Birth :',
                                             style: TextStyle(
                                                 color: Colors.black,
                                                 fontWeight: FontWeight.w400,
                                                 fontSize: 14
                                             ),

                                           ),
                                         ),
                                         Container(
                                           margin: EdgeInsets.only(left: 5),
                                           child: Text(filteredname[index].dateOfBirth,
                                             style: TextStyle(
                                                 color: Colors.black,
                                                 fontWeight: FontWeight.w400,
                                                 fontSize: 14
                                             ),

                                           ),
                                         ),
                                       ],
                                     ),
                                   ),

                                   Container(
                                     margin: EdgeInsets.only(top: 5),
                                     child: Row(
                                       children:<Widget>[
                                         Container(
                                           child: Text('Eye Colour :',
                                             style: TextStyle(
                                                 color: Colors.black,
                                                 fontWeight: FontWeight.w400,
                                                 fontSize: 14
                                             ),

                                           ),
                                         ),
                                         Container(
                                           margin: EdgeInsets.only(left: 5),
                                           child: Text(filteredname[index].eyeColour,
                                             style: TextStyle(
                                                 color: Colors.black,
                                                 fontWeight: FontWeight.w400,
                                                 fontSize: 14
                                             ),

                                           ),
                                         ),
                                       ],
                                     ),
                                   ),






                                 ],
                               ),
                             ),
                           ],
                         ),
                       );

                      }
                  )
                      :
                      Center(
                        child: CircularProgressIndicator(),
                      )
              )

            ],
          ),
        ),
      ),
    );
  }
}
