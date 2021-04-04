import 'package:flutter/material.dart';

void main() => runApp(LoadingPage());

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  Future<String> delayTime() async {
    String txt = await Future.delayed(Duration(seconds: 10), () {
      return 'Hello';
    });
    return txt;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FutureBuilder(
              future: delayTime(),
              builder: (BuildContext context, AsyncSnapshot snapshot){
                if(snapshot.hasData){

                  return Column(children: [
                    Image.network("https://sites.google.com/site/it5820610006/_/rsrc/1447388452555/khwam-bantheing/Percian%20Cat5.jpg"),
                    Text("แมวเปอร์เซีย",
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.brown,
                      ),)
                  ],);
                }else if(snapshot.hasError){
                  return Text('Error');
                }else{
                  return LinearProgressIndicator();
                }
              }
          ),
        ),
      ),
    );
  }
}