import 'package:flutter/material.dart';

class DefaultAppbar extends StatelessWidget {
  DefaultAppbar(this.title);

  String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,fontWeight: FontWeight.w500,fontSize: 23
        ),
      ),
      leading: InkWell(
        onTap: ()=>Navigator.pop(context),
        child: Icon(Icons.arrow_back,color: Colors.black,size: 24,),
      ),
    );
  }
}
