import 'package:constructionprovider1/view/screen/onbording/Bording.dart';
import 'package:constructionprovider1/view/screen/outh/Language/LanguageScreen.dart';
import 'package:constructionprovider1/view/screen/outh/Register/veryfiy/veryfiycode_signup.dart';
import 'package:constructionprovider1/view/screen/outh/forgetpassword/Forgetpassword.dart';
import 'package:constructionprovider1/view/screen/outh/forgetpassword/resetPassword.dart';
import 'package:constructionprovider1/view/screen/outh/forgetpassword/successe_resetPassword.dart';
import 'package:constructionprovider1/view/screen/outh/login/LoginScreen.dart';
import 'package:constructionprovider1/view/screen/outh/Register/Register1.dart';
import 'package:get/get.dart';

import '../../../core/middelware/mymiddelware.dart';
import '../outh/forgetpassword/veryfiyCodes.dart';

List<GetPage<dynamic>> routes = [
GetPage(name: "/", page: ()=>const LanguageScreen(),middlewares: [Mymiddelware()]),
GetPage(name: "/signup", page:()=>const SignUpScreen()),
GetPage(name: "/login", page:()=>const LoginScreen()  ),
GetPage(name: "/forgetpassword", page:()=>const ForgetPassword()  ),
GetPage(name: "/veryfiycode", page:()=>const VeryFiyCodePage()  ),
GetPage(name: "/resetpassword", page:()=>const ResetpasswordPage()  ),
GetPage(name: "/successrestpassword", page:()=>const Succssesresetpassword()  ),
GetPage(name: "/onboarding", page:()=>const OnBording()  ),
GetPage(name: "/veryfiycodesignup", page:()=> const VeryFiyCodesignup()  ),

];