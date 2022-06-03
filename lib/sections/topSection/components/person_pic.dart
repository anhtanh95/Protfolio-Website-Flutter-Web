import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return /*Container(
      //constraints: BoxConstraints(maxWidth: 239, maxHeight: 460),
      child: Image.asset("assets/images/person.jpg"),
    );*/
          Container(
            padding: EdgeInsets.all(8),
            //height: 280,
            //width: 240,
            constraints: BoxConstraints(maxWidth: 240, maxHeight: 280),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: Color(0xFFE8F5FF),
              //borderRadius: BorderRadius.circular(10),
              borderRadius: BorderRadius.vertical(top: Radius.circular(10), bottom: Radius.zero),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFD2E6FC),
                borderRadius: BorderRadius.vertical(top: Radius.circular(10), bottom: Radius.zero),
                //borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 6,
                    color: Color(0xFF0080FF).withOpacity(0.25),
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/person.jpg"),
                ),
              ),
            ),
          );
  }
}
