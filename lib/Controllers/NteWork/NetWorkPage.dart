import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:flutter_app/models/User.dart';

class NetWorkPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new NetWorkPageState();
  }

}

class NetWorkPageState extends State<NetWorkPage> {
  bool _loading = true;
  String _text = "";

  @override
  void initState() {
    // TODO: implement initState
    loadRequest();
    super.initState();
  }

  Future loadRequest() async {

      if (_loading) {
        setState(() {
          _text = "loading....";
        });
      }


      try {
        Dio dio = new Dio();
        Response response;
        response = await dio.get(
            "http://10.3.34.211:8082/rcs/api/v1/login/mobileLogin",
            queryParameters: {"account" : "mengjie" , "password" : "123456"},
            options: Options(responseType: ResponseType.json)
        );

//        Map<String ,dynamic> result = response.data as Map<String , dynamic>;


//        Map<String , dynamic> result = json.decode(response.data);
        User result = User.fromJson(response.data);

        print(result.data[0].riverwayName);

        setState(() {
          _text = response.data.toString();
        });

      } catch (e) {
        setState(() {
          _text = "error" + e.toString();
        });
      } finally {
        _loading = false;
      }

  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body:   Container(width: MediaQuery.of(context).size.width-50,
      child: ListView(
        children: <Widget>[
          Text(_text)
        ],
      )
      ),
    );
  }

}