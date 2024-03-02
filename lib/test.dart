import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ticketapp/core/network/apiurls.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> _theatres = [];

  Future<void> _fetchTheatres() async {
    final url = Uri.parse('${ApiUrl.baseurl}/api/theatres/get-all-theatres');
    final headers = {
      'X-Authtoken': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NWRmMjEzNDVlMWQ0MGI2YTc0M2I3MDkiLCJpYXQiOjE3MDkyMTI3NjB9.80z2VI4zWoqSfmqEIOL906koqIEQSPt6cZU7YjL4Q9c',
      // Add other headers if needed
    };

    final response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      final List<dynamic> responseData = json.decode(response.body)['data'];
      setState(() {
        _theatres = List<Map<String, dynamic>>.from(responseData);
      });
    } else {
      print('Failed to load theatres: ${response.body}');
      throw Exception('Failed to load theatres: ${response.body}');
    }
  }


  @override
  void initState() {
    super.initState();
    _fetchTheatres();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theatres'),
      ),
      body: _theatres.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: _theatres.length,
        itemBuilder: (context, index) {
          final theatre = _theatres[index];
          return ListTile(
            title: Text(theatre['name']),
            subtitle: Text(theatre['address']),
            onTap: () {
              // Add onTap logic if needed
            },
          );
        },
      ),
    );
  }
}
