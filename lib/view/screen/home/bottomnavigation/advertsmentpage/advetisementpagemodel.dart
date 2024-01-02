

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:get/get.dart';







class Specailorders {
   final String ?image ;
   final String name ;
   final String iconss1 ;
   final bool boolcost ;
   final String costs ;
   final String rates ;
   final String jop ;
   final bool avalibale ;
   




    

Specailorders(this.name,this.image,this.iconss1,this.jop,this.costs,this.avalibale,this.boolcost,this.rates );

}

List<Specailorders> specailordersList =[
Specailorders("Kitchen_work".tr, AppImageAssets.carpenter,  AppImageAssets.manphoto,"Carpenter".tr,"150",false,true,"4.8"),
Specailorders("Work_bishop".tr, AppImageAssets.painter,AppImageAssets.manphoto,"Wall oysters".tr,"140",true,false,"4.5",),
Specailorders("Make_bathroom".tr, AppImageAssets.photo2, AppImageAssets.manphoto,"plumber".tr,"200",false,false,"4.3",),
Specailorders("Make_rooms".tr, AppImageAssets.carpenter,  AppImageAssets.manphoto,"Carpenter".tr,"150",true,true,"4.0",),
Specailorders("Paint_work".tr, AppImageAssets.painter,  AppImageAssets.manphoto ,"painter".tr,"300",true,false,"4.1",),
Specailorders("Carpentry_work".tr, AppImageAssets.carpenter,  AppImageAssets.manphoto ,"Carpenter".tr,"150",true,false,"4.2",),
Specailorders("Blacksmith_work".tr, AppImageAssets.painter,  AppImageAssets.manphoto, "Smith".tr,"23",false,false,"4.3",),
Specailorders("Kitchen_work".tr, AppImageAssets.carpenter, AppImageAssets.manphoto,"Carpenter".tr,"2334",false,false,"4.9",),
Specailorders("Work_bishop".tr, AppImageAssets.painter,  AppImageAssets.manphoto ,"Wall oysters".tr,"152",true,false,"4.1",),
Specailorders("Make_bathroom".tr, AppImageAssets.carpenter,  AppImageAssets.manphoto,"Carpenter".tr,"432",true,false,"4.9",),
Specailorders("Make_rooms".tr, AppImageAssets.painter, AppImageAssets.manphoto ,"Carpenter".tr,"450",false,false,"5.0",),
Specailorders("Paint_work".tr, AppImageAssets.carpenter, AppImageAssets.manphoto ,"painter".tr,"234",true,false,"4.2",),
Specailorders("Carpentry_work".tr, AppImageAssets.painter,  AppImageAssets.manphoto ,"Carpenter".tr,"234",false,false,"4.3",),
Specailorders("Blacksmith_work".tr, AppImageAssets.carpenter, AppImageAssets.manphoto,"Smith".tr,"666",true,false,"4.4",
),


];
