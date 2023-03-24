import 'package:delivery_app/config/app_text_theme.dart';
import 'package:flutter/material.dart';

import '../config/app_colors.dart';

class AppBarWidgets extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final bool centertitle;
  const AppBarWidgets({Key? key,  this.title = "",  this.centertitle = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centertitle,
      title: Text("$title",style: AppTextTheme.appbar,),
      leading: IconButton(icon: Icon(Icons.arrow_back_ios),color: AppColors.black,onPressed: (){
        Navigator.pop(context);
      },),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
