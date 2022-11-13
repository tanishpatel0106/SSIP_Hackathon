import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:provider/provider.dart';

import '../providers/founders.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isRegistered = false;

  final _url = Uri.parse(
      'https://www.mca.gov.in/content/mca/global/en/foportal/fologin.html');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final foundersDetails = Provider.of<Founders>(context).founderDetails;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          ListTile(
            isThreeLine: true,
            title: Text(
              foundersDetails.name,
              style: const TextStyle(
                fontSize: 28,
              ),
            ),
            subtitle: Text(
              '${foundersDetails.description}\n${foundersDetails.industry}',
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
          const ListTile(
            isThreeLine: true,
            title: Text(
              'Idea Name',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            subtitle: Text(
              'Idea Description\nIdea Description\nIdea Description\nIdea Description\n',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            leading: Icon(Icons.lightbulb_outline_rounded, size: 70),
          ),
          const SizedBox(
            height: 30,
            child: Divider(
              thickness: 2,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Text('Is your company registered?'),
              Switch(
                value: isRegistered,
                onChanged: (val) {
                  setState(() {
                    isRegistered = val;
                  });
                },
              ),
            ],
          ),
          ElevatedButton(
            onPressed: isRegistered
                ? null
                : () async {
                    await _launchUrl();
                  },
            child: const Text(
              'Company Registeration',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
