import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Profile App",
    home: Scaffold(
    appBar: AppBar(
      centerTitle: true,
    title: Text('Profile App'),
    ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(child: Image.network("https://scontent.fpkr1-1.fna.fbcdn.net/v/t39.30808-6/413040727_2077808699248298_5108273409838967062_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=0MLp_L9oWCsQ7kNvgFlHwm0&_nc_oc=Adj9nKPDSc_csrqsE3OJKqd51aHvkQRfUARHFoIJ6oZpIeb3sifEuKXRpEBJ3iD9wGoHVFMsM3oOC2ghgyjD6b4c&_nc_zt=23&_nc_ht=scontent.fpkr1-1.fna&_nc_gid=AFKUJDg8_zEnExiMbeEPoZ_&oh=00_AYDHkFwsr5q20-8r4upf00IOW9huji4S6BBfI12AV_G_fw&oe=678BABC6", height: 250, width: 250,),),
          SizedBox(height: 10),
          Text('Name: Susmita Aryal', style: TextStyle(fontSize: 24, color: Colors.green, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text('Address: Pokhara, Nepal',style: TextStyle(fontSize: 19),),
          SizedBox(height: 5,),
          Text('Email: susmitaryal0110@gmail.com'),
          SizedBox(height: 200,),
          Text('Develop By: Susmita Aryal'),
        ],
      ),
    ),
    ));
}