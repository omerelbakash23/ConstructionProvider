import 'package:constructionprovider1/core/Class/statuesResult.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/constant/ImageAssets.dart';

class HandeldataView extends StatelessWidget {
  final statuesRequest statesRequests ;
  final Widget widget ;
  const HandeldataView({super.key, required this.statesRequests, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statesRequests==statuesRequest.loading?
    Center(child:Lottie.asset(AppImageAssets.loading,repeat: false,width: 300,height: 300))
    :statesRequests==statuesRequest.offlinefailure?    Center(child:Lottie.asset(AppImageAssets.offline,repeat: false,width: 300,height: 300))

    : statesRequests==statuesRequest.serverfailure?     Center(child:Lottie.asset(AppImageAssets.server,repeat: false,width: 300,height: 300))
:
    statesRequests==statuesRequest.failure?    Center(child:Lottie.asset(AppImageAssets.Nodata,repeat: false,width: 300,height: 300))
:widget
  ;}
}




  