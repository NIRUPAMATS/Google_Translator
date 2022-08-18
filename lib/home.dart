
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedItem1='';
  bool flag1=true;
  String selectedItem2='';
  bool flag2=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEXT TRANSLATION',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            letterSpacing:-2,

            //fontStyle: FontStyle.italic
          ),),
        centerTitle: true,
        backgroundColor: Color(0xff0c0d29),
        foregroundColor: Colors.white,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Container(
                      width: 150,
                      height: 50,
                      child: FlatButton(onPressed:() =>onButtonPressed1(),
                          color: Color(0xff0c0d29),

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(flag1?'Current language':selectedItem1,style: TextStyle(color: Colors.white),)
                      ),
                    ),
                    Icon(
                      Icons.arrow_right_rounded,
                      size: 35,
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      child:FlatButton(onPressed:()=>onButtonPressed2(),
                          color: Color(0xff0c0d29),

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(flag2?'Translated Language':selectedItem2,style: TextStyle(color: Colors.white),)
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                  child: Text('Translate From:English')
              ),
              SizedBox(height: 10,),
              Container(
                color: Color(0xffdce8e0),
                height:150 ,
                width:MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(15),
                child: Text('hola',),
              ),
              SizedBox(height: 40,),
              Text('Translate To:Hindi'),
              SizedBox(height: 10,),
              Container(
                color: Color(0xffdce8e0),
                height:150 ,
                width:MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(15),
                child: Text('hola',),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void onButtonPressed1(){
    showModalBottomSheet(context: context, builder: (context){
      return Column(
          children:<Widget> [
            ListTile(
              title:Text('Hindi'),
            onTap: ()=>selectLanguage1('Hindi'),
            ),
            ListTile(
              title:Text('Marati'),
              onTap: ()=>selectLanguage1('Marati'),
            ),
            ListTile(
              title:Text('Arabi'),
              onTap: ()=>selectLanguage1('Arabi'),
            ),
      ],
      );
    });
  }
  void selectLanguage1(String name){
    flag1=false;
    setState(() {
      selectedItem1=name;
    });
  }

  void onButtonPressed2(){
    showModalBottomSheet(context: context, builder: (context){
      return Column(
        children:<Widget> [
          ListTile(
            title:Text('Hindi'),
            onTap: ()=>selectLanguage2('Hindi'),
          ),
          ListTile(
            title:Text('Marati'),
            onTap: ()=>selectLanguage2('Marati'),
          ),
          ListTile(
            title:Text('Arabi'),
            onTap: ()=>selectLanguage2('Arabi'),
          ),
        ],
      );
    });
  }
  void selectLanguage2(String name){
    flag2=false;
    setState(() {
      selectedItem2=name;
    });
  }
}

