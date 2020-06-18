import 'package:flutter/material.dart';
class BLOG extends StatefulWidget {
  @override
  _BLOGState createState() => _BLOGState();
}

class _BLOGState extends State<BLOG> {
  var _ititle1;
  var _idescription1;
  var _ilink1;
  /////accesing vaiables new/.....
  final ititle1= new TextEditingController();
  final idescription1= new TextEditingController();
  final ilink1= new TextEditingController();

  @override
  Widget build(BuildContext context) {
         final htitile = Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.le,
        children: <Widget>[
          InkWell(
            child: Image.network('https://img.icons8.com/windows/32/000000/title.png'),
            onTap: (){
              //      Navigator.push(context,MaterialPageRoute(builder: (context){
              // return new MyApp();
              // }));
            },
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Title ',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
     final hdescription = Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.le,
        children: <Widget>[
          InkWell(
            child: Image.network('https://img.icons8.com/windows/32/000000/edit.png'),
            onTap: (){
              //      Navigator.push(context,MaterialPageRoute(builder: (context){
              // return new MyApp();
              // }));
            },
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Description',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  final hlink = Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.le,
        children: <Widget>[
          InkWell(
            child: Image.network('https://img.icons8.com/android/24/000000/link.png'),
            onTap: (){
              //      Navigator.push(context,MaterialPageRoute(builder: (context){
              // return new MyApp();
              // }));
            },
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Link of blog ',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
    final ititle = Padding(
          padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
          child: TextFormField(
            controller: ititle1,
        decoration: InputDecoration(labelText: 'Name',
            contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0)
        ),
        // maxLength: 10,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
          return null;
        },
        // onSaved: (String value) {
        //   _name = value;
        // },
      ),
    );
        final idescription = Padding(
      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
      child: TextFormField(
        controller: idescription1,
        decoration: InputDecoration(labelText: 'write here',
            contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0)
        ),
        maxLines: 5,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
          return null;
        },
        // onSaved: (String value) {
        //   _name = value;
        // },
      ),
    );
      final ilink = Padding(
      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
      child: TextFormField(
        controller: ilink1,
        decoration: InputDecoration(labelText: 'Link to the Blog or Patent File',
            contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0)
        ),
        // maxLength: 10,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
          return null;
        },
        // onSaved: (String value) {
        //   _name = value;
        // },
      ),
    );

    return Scaffold(
       appBar: AppBar(
        title: Text("Add Blog"),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            // Navigator.push(context,MaterialPageRoute(builder: (context){
                  //   return new EDITINFO();

                  // }));
        }),
      ),
        body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          htitile,
          ititle,
          hlink,
          ilink,
          hdescription,
          idescription,
          SizedBox(
            height:50 ,
          ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  onPressed: () {
                    // Navigator.push(context,MaterialPageRoute(builder: (context){
                    //   return new EDITINFO();

                    // }));
                    // Navigator.of(context).pushNamed(HomePage.tag);
                  },
                  padding: EdgeInsets.all(20),
                  color: Colors.blue,
                  child: Text('      Cancel        ',
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  // onPressed: _saveForm(),
                  //       Container(
                  //   padding: EdgeInsets.all(8),
                  //   child: RaisedButton(
                  //     child: Text('Save'),
                  //     onPressed: _saveForm,
                  //   ),
                  // ),
                  onPressed: () {
                    setState(() {
                   
                      
                          _ititle1=ititle1.text;
                          _idescription1=idescription1.text;
                          _ilink1=ilink1.text;
  
                     
                    });
             

 
                  },



                  padding: EdgeInsets.all(20),
                  color: Colors.blue,
                  child: Text('Save Changes',
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
              ),
            ],
          ),



          // Container(
          //       padding: EdgeInsets.all(16),
          //       child: Text('$_ititle1,   $_ilink1,    $_idescription1'),

          //     ),


        ],
        ),
    );
  }
}




//           // Container(
//           //       padding: EdgeInsets.all(16),
//           //       child: Text('$_jkval,   $_myActivity,    $_projectinfo,    $_assignedto,      $_description'),

//           //     ),

//           // Container(
//           //   padding: EdgeInsets.all(16),
//           //   child: Text(_myActivity),

//           // )
//         ],
//       ),
//     );
//   }
// }