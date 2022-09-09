import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rxs_profileview_fg/widget/appbar_widget.dart';

import 'package:rxs_profileview_fg/widget/change_theme_button_widget.dart';
import 'package:rxs_profileview_fg/widget/profilewidget.dart';

import 'package:rxs_profileview_fg/theme_provider.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  Future<void> _changeTheme() async {
    setState(() {
      ChangeThemeButtonWidget();
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final ValueNotifier<bool> _counter = ValueNotifier<bool>(true);
    final isDarkMode = themeProvider.isDarkMode;
    final icon =
        isDarkMode ? CupertinoIcons.sun_max : CupertinoIcons.moon_stars;

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            /* const SizedBox(
              height: 100,
              child: HeaderWidget(100, false, Icons.house_rounded),
            ), */
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 5, color: Colors.white),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Profile Name',
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'veli.duman@rixos.com',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: size.height * .5,
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Profile_Widget(
                          icon: Icons.person,
                          title: 'My Profile',
                          press: () {},
                        ),
                        Profile_Widget(
                          icon: Icons.settings,
                          title: 'Settings',
                          press: () {},
                        ),
                        Profile_Widget(
                          icon: Icons.notifications,
                          title: 'Notifications',
                          press: () {},
                        ),
                        Profile_Widget(
                          icon: Icons.chat,
                          title: 'FAQs',
                          press: () {},
                        ),
                        Profile_Widget(
                          icon: Icons.share,
                          title: 'Share',
                          press: () {},
                        ),
                        Profile_Widget(
                          icon: Icons.logout,
                          title: 'Log Out',
                          press: () {},
                        ),
                      ],
                    ),
                  ),

                  /*
            Center(
              child: OutlineButton(
                padding: EdgeInsets.symmetric(horizontal: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: Text("SIGN OUT",
                    style: TextStyle(
                        fontSize: 16, letterSpacing: 2.2, color: Colors.black)),
              ),
*/

                  ElevatedButton(onPressed: () {}, child: Text('data')),
                  ChangeThemeButtonWidget()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

//build
  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Option 1"),
                    Text("Option 2"),
                    Text("Option 3"),
                  ],
                ),
                actions: [
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
