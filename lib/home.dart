import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Katalog',textAlign: TextAlign.center),
        elevation: 0.0,
      ),
      body:
        Column(
          children: <Widget>[
            SizedBox(height: 24.0),
            Text('Movie Terbaru',style:themeData.textTheme.headline ),
           new Expanded(child:  GridView.count(crossAxisCount: 2,
             padding: EdgeInsets.all(16.0),
             childAspectRatio: 8.0/9.0,
             children: _buildListGrid(context,10),
           ))
          ],
          ),
        );
  }

  List<Card> _buildListGrid(BuildContext context,int count) {
    ThemeData themeData = Theme.of(context);
    List<Card> cards = List.generate(count,
    (int index) => Card(
      color: Colors.black54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          AspectRatio(
            aspectRatio: 18.0/15.0,
            child:
            Image.asset('assets/wiro.jpg',fit: BoxFit.cover,height: double.infinity,width: double.infinity),

          ),
          SizedBox(height: 5.0,),
          Text('Wiro sableng',style: themeData.textTheme.title),
          Text('September 2018',style: themeData.textTheme.body2)
        ],
      ),

    )
    );

    return cards;
  }
}