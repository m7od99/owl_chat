// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> ar = {
    "login": "تسجيل الدخول",
    "sign_up": "تسجيل",
    "chats": "المحداثات",
    "settings": "الاعدادات",
    "contacts": "جهات الاتصال",
    "edit": "تعديل",
    "sign_out": "تسجيل الخروج",
    "email": "البريد الالكتروني",
    "password": "كلمة السر",
    "type_message": "اكتب هنا",
    "add": "اضافه",
    "remove": "حذف",
    "dont_have_account": "لا تمتلك حساب ؟",
    "register": "سجل الان",
    "enter_your_email": "ادخل البريد الالكترني",
    "enter_your_password": "ادخل كلمة السر ",
    "forgot_password": "نسيت كلمة السر",
    "user_name": "اسم المستخدم",
    "confirm_password": "تاكيد كلمة السر",
    "re_enter_your_password": "اكتب كلمة السر مجددا ",
    "continue": "استمر"
  };
  static const Map<String, dynamic> en = {
    "login": "log in",
    "sign_up": "Sign up",
    "chats": "Chats",
    "settings": "Settings",
    "contacts": "Contacts",
    "edit": "Edit",
    "sign_out": "Sign out",
    "email": "Email",
    "password": "Password",
    "type_message": "Type message",
    "add": "Add",
    "remove": "Remove",
    "dont_have_account": "Don't have an account?",
    "register": "Register",
    "enter_your_email": "Enter your email",
    "enter_your_password": "Enter your password",
    "forgot_password": "Forgot password",
    "user_name": "User Name",
    "confirm_password": "Confirm Password",
    "re_enter_your_password": "Re-enter your Password ",
    "continue": "Continue"
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "ar": ar,
    "en": en
  };
}
