import 'package:BOARDING/certifications.dart';
import 'package:BOARDING/education.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:BOARDING/blog.dart';
class MainDrawer extends StatefulWidget {
  final List list_blogs;
   final List list_education;
   final List list_certifications;
  MainDrawer(this.list_blogs,this.list_education,this.list_certifications);
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children:<Widget>[
          Container(
            width:double.infinity,
            padding:EdgeInsets.only(
              top:30,
              bottom: 10,
            ),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children:<Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20.0, 0, 20.0),
                    width:100,
                    height:150,
                    decoration:BoxDecoration(
                      shape:BoxShape.circle,
                      image:DecorationImage(image: AssetImage('assets/images/man.png'),
                      
                      ),
                      

                    )
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Udbhav",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),

                  Text("udbhava@iitbhilai.ac.in",
                    style: TextStyle(fontSize: 17,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile',
            style: TextStyle(fontSize:16),),
            onTap: null,
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg_images/education.svg',
              height: 20.0,
              width:20.0
            ),
            title: Text('Education',
            style: TextStyle(fontSize:16),),
            onTap: (){
              print("something");
             
              Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context)=> Education(widget.list_education)),
              );
            
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg_images/certificate.svg',
              height: 20.0,
              width:20.0
            ),
            title: Text('Certifications',
            style: TextStyle(fontSize:16),),
            onTap: (){
              Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context)=> Certification(widget.list_certifications)),
              );

            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg_images/blog.svg',
              height: 20.0,
              width:20.0
            ),
            title: Text('Blogs',
            style: TextStyle(fontSize:16),),
            onTap: (){
              print("something");
              Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context)=> Blog(widget.list_blogs) ),
              );
              
            },
          ),

        ],
      ),

    );
  }
}