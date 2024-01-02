// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:constructionprovider1/core/Class/statuesResult.dart';
import 'package:constructionprovider1/core/constant/string.dart';
import 'package:constructionprovider1/core/function/checkinternet.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';



class  Curd {





  Future<Either<statuesRequest,Map>> postData() async {
  
  if(await checkInterNet())
{
  Dio dio =Dio();
  var response = await dio.post(baseUrl);
  if(response.statusCode ==200 ||response.statusCode ==200)
  {
    Map responsebody =jsonDecode(response.data);
    return Right(responsebody);
  }
  else {
    return left(statuesRequest.serverfailure);
  }
}  

 else {
  return left(statuesRequest.offlinefailure);
}



    
  }
}