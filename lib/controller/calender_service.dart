import 'dart:convert';
import 'dart:html';
import 'package:http/http.dart' as http;

class Airtable {
  final String apiKey;

  Airtable(this.apiKey);

  factory Airtable.connect(String apiKey) {
    return Airtable(apiKey);
  }

  Base base(String baseId) {
    return Base(this, baseId);
  }
}

class Base {
  final Airtable airtable;
  final String baseId;

  Base(this.airtable, this.baseId);

  Table table(String tableName) {
    return Table(this, tableName);
  }
}

class Table {
  final Base base;
  final String tableName;

  Table(this.base, this.tableName);

  Future<void> create(Map<String, dynamic> record) async {
    var schedule;
    final response = await http.post(
      Uri.parse('https://api.airtable.com/v0/${schedule.appjTOpNTc0Ks4uqX}/$Event'),
      headers: {
        'Authorization': 'Bearer pat441atTxdMXPg5d.28d66d59734d17465e266dba5b6ef68b972b9bf835345889381baba94ac558b5',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'fields': record}),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to create record');
    }
  }

  Future<void> update(Map<String, dynamic> record) async {
    var schedule;
    final response = await http.patch(
      Uri.parse('https://api.airtable.com/v0/${schedule.appjTOpNTc0Ks4uqX}/$Event/${record['id']}'),
      headers: {
        'Authorization': 'Bearer pat441atTxdMXPg5d.28d66d59734d17465e266dba5b6ef68b972b9bf835345889381baba94ac558b5',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'fields': record['fields']}),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update record');
    }
  }

  Future<List<Map<String, dynamic>>> list() async {
    var schedule;
    final response = await http.get(
      Uri.parse('https://api.airtable.com/v0/${schedule.appjTOpNTc0Ks4uqX}/$Event'),
      headers: {
        'Authorization': 'Bearer pat441atTxdMXPg5d.28d66d59734d17465e266dba5b6ef68b972b9bf835345889381baba94ac558b5',
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load records');
    }

    final data = jsonDecode(response.body);
    return List<Map<String, dynamic>>.from(data['records'].map((record) => record['fields']));
  }
}