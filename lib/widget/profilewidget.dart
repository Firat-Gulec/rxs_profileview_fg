import 'package:flutter/material.dart';

class Profile_Widget extends StatelessWidget {
  const Profile_Widget({
    Key? key,
    required this.icon,
    required this.title,
  required this.press,
  }) : super(key: key);
final GestureTapCallback press;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: press,
       onTap: press,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.green, //.withOpacity(.2),
                  size: 24,
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600])),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey[600],
              size: 16,
            )
          ],
        ),
      ),
    );
  }
}
