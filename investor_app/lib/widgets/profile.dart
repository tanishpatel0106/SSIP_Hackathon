import 'package:flutter/material.dart';
import 'package:investor_app/widgets/startup_profile.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:provider/provider.dart';

import '../models/founder.dart';
import '../providers/investors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  final List<Founder> founders = [
    Founder(name: 'Test1', description: 'Description1', industry: 'Industry1'),
    Founder(name: 'Test2', description: 'Description2', industry: 'Industry2'),
    Founder(name: 'Test3', description: 'Description3', industry: 'Industry3'),
    Founder(name: 'Test4', description: 'Description4', industry: 'Industry4'),
    Founder(name: 'Test5', description: 'Description5', industry: 'Industry5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          ListTile(
            isThreeLine: true,
            title: Text(
              'Name',
              style: const TextStyle(
                fontSize: 28,
              ),
            ),
            subtitle: Text(
              'Description',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            trailing: const Icon(Icons.person_rounded, size: 70),
          ),
          const SizedBox(
            height: 30,
            child: Divider(
              thickness: 2,
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: founders.length,
              itemBuilder: (ctx, i) {
                return ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            FounderProfile(details: founders[i])));
                  },
                  title: Text(founders[i].name),
                  subtitle: Text(founders[i].description),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
