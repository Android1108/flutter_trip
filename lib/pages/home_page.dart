import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app1/dao/home_dao.dart';
import 'package:flutter_app1/model/home_model_example_entity.dart';
import 'package:flutter_app1/model/user.dart';
import 'package:flutter_app1/model/user2_entity.dart';
import 'package:flutter_app1/model/userbean_entity.dart';
import 'package:flutter_app1/network/api.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:flutter_app1/network/http_request.dart';
import 'package:flutter_app1/network/http_request.dart';
import 'package:flutter_app1/network/http_request.dart';
import 'package:flutter_app1/widget/local_nav.dart';
const APPBAR_OFFSET=100;

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();

}
class _HomePageState extends State<HomePage>{
  List<HomeModelExampleLocalnavlist> localNavList =[];
  List _imageUrls=[
    'https://pages.ctrip.com/commerce/promote/20180718/yxzy/img/640sygd.jpg',
    'https://pages.ctrip.com/commerce/promote/20180718/yxzy/img/640sygd.jpg',
    'https://pages.ctrip.com/commerce/promote/20180718/yxzy/img/640sygd.jpg',
  ];


  var name='';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }
  double appBarAlpha = 0;

   _onScroll(offset) {
    double alpha=offset/APPBAR_OFFSET;
    if(alpha<0){
      alpha=0;
    }
    else if(alpha>1){
      alpha=1;
    }
    setState(() {
      appBarAlpha=alpha;
    });
    print(alpha);

  }

   getData() async {
    try {
      Response response = await Dio().get(Api.TripUrl);
      HomeModelExampleEntity model=HomeModelExampleEntity.fromJson(response.data);
      setState(() {
        localNavList=model.localNavList;
      });
//      User2Entity user2entity=User2Entity.fromJson(response.data);
////      UserbeanEntity userbeanEntity=UserbeanEntity.fromJson(response.data);
//      setState(() {
//        name=user2entity.data.name;
//      });

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
      body: Stack(
        children: <Widget>[
          MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child:NotificationListener(

                  onNotification: (scrollNotification){
                    if(scrollNotification is ScrollUpdateNotification && scrollNotification.depth==0){
                      _onScroll(scrollNotification.metrics.pixels);
                    }
                  },
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 170,
                        child: Swiper(
                          itemCount: _imageUrls.length,
                          autoplay: true,
                          itemBuilder: (BuildContext context,int index){
                            return Image.network(
                              _imageUrls[index],
                              fit: BoxFit.fill,
                            );
                          },
                          pagination: new SwiperPagination(),
                        ),
                      ),

                      LocalNav(localNavList: localNavList,),
                      Container(
                        height: 800,
                        child: ListTile(
                          title: Text("test"),
                        ),
                      ),
                    ],
                  ))
          ),
          Opacity(
            opacity: appBarAlpha,
            child: Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text('首页'),
                ),

              ),
            ),
          )
        ],
      )



    );
  }

}



