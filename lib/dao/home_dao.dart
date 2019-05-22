

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app1/model/home_model.dart';

class HomeDao{



  static getdata() async {

    Dio dio = new Dio();
    Response response=await dio.get("http://www.devio.org/io/flutter_app/json/home_page.json");
    if(response.statusCode==200){
      print(response.data);
//      var result= json.decode(response.data);
      return response.data;
    }
    print(response.data);


  }
}