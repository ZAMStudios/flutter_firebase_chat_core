import 'package:flutter/material.dart';


/// A class that represents send button widget
class SendButton extends StatelessWidget {
  /// Creates send button widget
  const SendButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  /// Callback for send button tap event
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
   //   height: 24,
      margin: const EdgeInsets.only(left: 16),
   //   width: 24,
      child:   Container(
        height: 47,
        width: 47,
        decoration: BoxDecoration(

            shape: BoxShape.circle,
            border: Border.all(color: Color(0xffB1B1B1),width: 2)
        ),
        child:   Center(
          child: InkWell(
            onTap: onPressed,
            child: Container(
              height:37,
              width: 37,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF053647)
              ),
              child: Center(
                  child:
                  Container(
                    height:22,
                    width: 22,
                    child: Image.asset('images/send.jpg',color: Colors.white,),
                  ) ),
            ),
          ),
        ),
      ),
    );
  }
}
