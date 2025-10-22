import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';

class DivingSitesScreen extends StatelessWidget {
  const DivingSitesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final divingSites = appState.divingSites;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Diving Sites'),
      ),
      body: ListView.builder(
        itemCount: divingSites.length,
        itemBuilder: (context, index) {
          final site = divingSites[index];
          return ListTile(
            title: Text(site['name']),
            subtitle: Text(site['location']),
            trailing: Text('${site['rating']} ★'),
          );
        },
      ),
    );
  }
}
