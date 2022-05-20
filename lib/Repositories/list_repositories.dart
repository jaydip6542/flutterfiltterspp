
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertest/Model/list_response.dart';
import 'package:http/http.dart' as http;



class ListData{

  Future<List<ListDataResponse>> getgrapdata()
       async {

    Uri url = Uri.parse("http://hp-api.herokuapp.com/api/characters");

    print(url);
    final response = await http.get(url);
    print(response.body);
    return listDataResponseFromJson(response.body);
  }

}