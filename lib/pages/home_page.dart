import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app1/dao/home_dao.dart';
import 'package:flutter_app1/model/user.dart';
import 'package:flutter_app1/model/user2_entity.dart';
import 'package:flutter_app1/model/userbean_entity.dart';
import 'package:flutter_app1/network/api.dart';

import 'package:flutter_app1/network/http_request.dart';
import 'package:flutter_app1/network/http_request.dart';
import 'package:flutter_app1/network/http_request.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();

}
class _HomePageState extends State<HomePage>{

  var name='';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }

   getData() async {
    try {
      Response response = await Dio().get(Api.BaseUrl);
      User2Entity user2entity=User2Entity.fromJson(response.data);
//      UserbeanEntity userbeanEntity=UserbeanEntity.fromJson(response.data);
      setState(() {
        name=user2entity.data.name;
      });

      print(response);
    } catch (e) {
      print(e);
    }


//    NetUtil.get("/v2/5b7143ae3200001402f36c46", (data) {
//      print(data.toString());
//      UserbeanEntity userbeanEntity=UserbeanEntity.fromJson(data);
//
//
//      setState(() {
//      //print( user.statusCode);
//        name=userbeanEntity.name;
//
//      });
//    }, errorCallBack: (errorMsg) {
//      print("error:" + errorMsg);
//    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body:  Center(

        child: Text(name),
      ),
      floatingActionButton: FloatingActionButton(onPressed: getData),

    );
  }

}
