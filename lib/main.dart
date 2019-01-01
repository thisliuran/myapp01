import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title:"我的第一个app",
      theme: new ThemeData(
          primaryColor:Colors.yellow
      ),
      home:MyHomePage(title:"我的首页")
    );
  }



}

class MyHomePage extends StatefulWidget{

  MyHomePage({Key key,this.title}):super(key : key);
  final title;

  @override
  State<StatefulWidget> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage>{
  int _count = 0;
  void _add(){
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

      appBar: new AppBar(title:new Text(widget.title)),
      body:new Center(
        child:new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[new Text("hahahah"),
          new Text((int.parse("$_count")*10).toString(),style:Theme.of(context).textTheme.display1),
          FlatButton(
            child:Text("点击跳转"),
            textColor: Colors.black87,

            onPressed: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context){return new NewPage();}
              ));
            },
          )]
        )
      ),
      floatingActionButton: new FloatingActionButton(onPressed: _add,
          tooltip:"点击增加1",
        child:new Icon(Icons.add_shopping_cart)
      ),



    );
  }

}


class NewPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar:  AppBar(title: Text("新页面"),),
      body:Center(child: Text("新页面 新内容"),)
    );
  }

}