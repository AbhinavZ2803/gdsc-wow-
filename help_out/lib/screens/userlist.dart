import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:help_out/screens/infopage1.dart';
import 'package:help_out/screens/infopage2.dart';

class OrphanageListScreen extends StatefulWidget {
  @override
  _OrphanageListScreenState createState() => _OrphanageListScreenState();
}

class _OrphanageListScreenState extends State<OrphanageListScreen> {
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  Map<String, Widget> _orphanagePages = {
    'Dnyandeep Balgruha': OrphanageInfoPage1(),
    'Sneh Sawali Old Age Home': OrphanageInfoPage2(),
    '123 Orphanage': OrphanageDetailsScreen(orphanageName: '123 Orphanage'),
    '456 Orphanage': OrphanageDetailsScreen(orphanageName: '456 Orphanage'),
    '789 Orphanage': OrphanageDetailsScreen(orphanageName: '789 Orphanage'),
  };

  List<String> _orphanageNames = [
    'Dnyandeep Balgruha',
    'Sneh Sawali Old Age Home',
    '123 Orphanage',
    '456 Orphanage',
    '789 Orphanage',
  ];

  List<String> _filteredOrphanageNames = [];

  @override
  void initState() {
    super.initState();
    _filteredOrphanageNames = _orphanageNames;
  }

  void _updateSearchQuery(String query) {
    setState(() {
      _searchQuery = query;
      _filteredOrphanageNames = _orphanageNames
          .where(
              (name) => name.toLowerCase().contains(_searchQuery.toLowerCase()))
          .toList();
    });
  }

  void _navigateToOrphanageDetailsScreen(String orphanageName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => _orphanagePages[orphanageName]!,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: TextField(
            controller: _searchController,
            onChanged: _updateSearchQuery,
            decoration: InputDecoration(
              hintText: 'Search for orphanages...',
            ),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              })),
      body: ListView.builder(
        itemCount: _filteredOrphanageNames.length,
        itemBuilder: (BuildContext context, int index) {
          final orphanageIndex = index;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                // Navigate to the page for the selected orphanage
                _navigateToOrphanageDetailsScreen(
                    _filteredOrphanageNames[orphanageIndex]);
              },
              child: ElevatedButton(
                child: Text(_filteredOrphanageNames[orphanageIndex]),
                onPressed: null,
              ),
            ),
          );
        },
      ),
    );
  }
}

class OrphanageDetailsScreen extends StatelessWidget {
  final String orphanageName;

  const OrphanageDetailsScreen({Key? key, required this.orphanageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(orphanageName),
      ),
      body: Center(
        child: Text('Details for $orphanageName'),
      ),
    );
  }
}
