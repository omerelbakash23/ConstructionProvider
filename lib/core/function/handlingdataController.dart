// ignore_for_file: file_names

import 'package:constructionprovider1/core/Class/statuesResult.dart';

handlingData(response){
  if(response is statuesRequest){
   return response;
  }
  else {
    return statuesRequest.success;
  }
}