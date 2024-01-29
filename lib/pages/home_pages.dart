import 'package:flutter/material.dart';
import 'package:ng_demo1/pages/details_page.dart';
import 'package:ng_demo1/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  static const String id='home_page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  Future _openDetails() async{
    String userId='2002';
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return  DetailsPage(userId:userId);
    }));
  }

  Future _openDetails2() async{
    String userId='2002';
   Map result =await Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context){
      return  DetailsPage(userId:userId);
    }));

    if(result != null && result.containsKey('data')){
      print(result['data']);
    } else{
      print('Nothing');
    }
  }

  Future _openDetails3() async {
    String userId = '3003';
    Navigator.of(context).pushNamed(SettingsPage.id, arguments: userId);
  }

  Future _openDetails4() async {

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: const Text(
            "Open",
          ),
          onPressed: (){
           _openDetails3();
          },
        ),
      ),
    );
  }
}
