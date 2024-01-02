// ignore_for_file: empty_catches

import 'dart:io';

checkInterNet () async {
try{
var reselt =await InternetAddress.lookup("google.com");
if (reselt .isNotEmpty&& reselt[0].rawAddress.isNotEmpty ){
  return true;
}
} on  SocketException catch (_) {
return false ;
}
}