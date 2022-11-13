import 'package:flutter/material.dart';
import 'package:investor_app/models/founder.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:provider/provider.dart';

import '../providers/investors.dart';

class FounderProfile extends StatefulWidget {
  final Founder details;
  const FounderProfile({
    super.key,
    required this.details,
  });

  @override
  State<FounderProfile> createState() => _FounderProfileState();
}

class _FounderProfileState extends State<FounderProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            ListTile(
              isThreeLine: true,
              title: Text(
                widget.details.name,
                style: const TextStyle(
                  fontSize: 28,
                ),
              ),
              subtitle: Text(
                widget.details.description,
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
          ],
        ),
      ),
    );
  }
}
