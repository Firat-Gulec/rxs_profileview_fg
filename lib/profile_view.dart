import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  

  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}


class _ProfileViewState extends 
State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         
        },
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
                      color: Colors.white,
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
                    'Actor',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding:
                              const EdgeInsets.only(left: 8.0, bottom: 4.0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            'LocaleKeys.profile_information.tr()',
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Card(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    ...ListTile.divideTiles(
                                      color: Colors.grey,
                                      tiles: [
                                        ListTile(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 12, vertical: 4),
                                          leading:
                                              const Icon(Icons.my_location),
                                          title: Text(
                                              'LocaleKeys.profile_location.tr()'),
                                          subtitle: const Text("USA"),
                                        ),
                                        ListTile(
                                          leading: const Icon(Icons.email),
                                          title: Text(
                                              'LocaleKeys.profile_email.tr()'),
                                          subtitle: const Text(
                                              "john.travolta@gmail.com"),
                                        ),
                                        ListTile(
                                          leading: const Icon(Icons.phone),
                                          title: Text(
                                              'LocaleKeys.profile_phone.tr()'),
                                          subtitle: const Text("99--99876-56"),
                                        ),
                                     /*   enforcer.enforce([
                                          userModel?.name,
                                          'data1',
                                          'read'
                                        ])
                                            ? ListTile(
                                                leading:
                                                    const Icon(Icons.person),
                                                title: Text(LocaleKeys
                                                    .profile_about
                                                    .tr()),
                                                subtitle: const Text(
                                                    "This is Alice's data"),
                                              )
                                            : ListTile(
                                                leading:
                                                    const Icon(Icons.person),
                                                title: Text(LocaleKeys
                                                    .profile_about
                                                    .tr()),
                                                subtitle: const Text(
                                                    "You're not authorized to view this page"),
                                              ),
                                        enforcer.enforce([
                                          userModel?.name,
                                          'data2',
                                          'read'
                                        ])
                                            ? ListTile(
                                                leading:
                                                    const Icon(Icons.person),
                                                title: Text(LocaleKeys
                                                    .profile_about
                                                    .tr()),
                                                subtitle: const Text(
                                                    "This is Bob's data"),
                                              )
                                            : ListTile(
                                                leading:
                                                    const Icon(Icons.person),
                                                title: Text(LocaleKeys
                                                    .profile_about
                                                    .tr()),
                                                subtitle: const Text(
                                                    "You're not authorized to view this page"),
                                              ),*/
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}