import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rxs_profileview_fg/change_theme_button_widget.dart';
import 'package:rxs_profileview_fg/profile_list_item.dart';

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
int value = 0;
  final paymentLabels = [
  'Credit card / Debit card',
  'Cash on delivery',
  'Paypal',
  'Google wallet',
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  ...ListTile.divideTiles(
                    color: Colors.white,
                                      tiles: 

                     [
                      ProfileListItem(
                        icon: Icons.ac_unit,
                        text: 'Purchase History',
                      ),
                      ProfileListItem(
                        icon: Icons.ac_unit,
                        text: 'Help & Support',
                      ),
                      ProfileListItem(
                        icon: Icons.ac_unit,
                        text: 'Settings',
                      ),
                      ProfileListItem(
                        icon: Icons.ac_unit,
                        text: 'Invite a Friend',
                      ),
                      ProfileListItem(
                        icon: Icons.ac_unit,
                        text: 'Logout',
                      ),
                    ],
                  ),
ExpansionTile(
                title: const Text('Transaction Details'),
                textColor: Colors.white,
                iconColor: Colors.white,
                initiallyExpanded: true,
                maintainState: true,
                children: List.generate(paymentLabels.length, (index) {
                  return ListTile(
                      leading: Radio(
                        //activeColor: kPrimaryColor,
                        value: index,
                        groupValue: 5,
                        onChanged: (i) => setState(() => value = index),
                      ),
                      title: Text(
                        paymentLabels[index],
                      ));
                }),
              ),

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
}
