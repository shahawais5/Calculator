import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;
  const MyButton({Key? key, required this.title,
    this.color=const Color(0xffa5a5a5),
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onpress,
        child: Container(
          height: 50,
          width: 20,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Center(
              child: Text(
                title,
                style: const TextStyle(fontSize:16,fontFamily: 'Bold',color: Colors.white),
              )),
        ),
      ),
    );
  }
}
