import 'dart:convert';
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
    return Table(this, tableName, apiKey: 'pat441atTxdMXPg5d.3dfd9ec90abd2edc8a65f2d422c486a4c7f5301928357c8262cb8dcbfa648939');
  }
}

class Table {
  final Base base;
  final String tableName;
  final String apiKey;

  Table(this.base, this.tableName, {required this.apiKey});

  Future<void> create(Map<String, dynamic> records) async {
    final response = await http.post(
      Uri.parse('https://api.airtable.com/v0/schedule/Projects/ '),
      headers: {
        'Authorization': 'Bearer pat441atTxdMXPg5d.3dfd9ec90abd2edc8a65f2d422c486a4c7f5301928357c8262cb8dcbfa648939',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'fields': records}),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to create record');
    }
  }

  Future<void> update(Map<String, dynamic> records) async {
    final response = await http.patch(
      Uri.parse('https://api.airtable.com/v0/schedule/Projects/${records['id']}'),
      headers: {
        'Authorization': 'Bearer pat441atTxdMXPg5d.3dfd9ec90abd2edc8a65f2d422c486a4c7f5301928357c8262cb8dcbfa648939',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'fields': records['fields']}),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update record');
    }
  }

  Future<void> delete(String recordsId) async {
    final response = await http.delete(
      Uri.parse('https://api.airtable.com/v0/schedule/Projects/$recordsId'),
      headers: {
        'Authorization': 'Bearer pat441atTxdMXPg5d.3dfd9ec90abd2edc8a65f2d422c486a4c7f5301928357c8262cb8dcbfa648939',
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to delete record');
    }
  }

  Future<List<Map<String, dynamic>>> list() async {
    final response = await http.get(
      Uri.parse('https://api.airtable.com/v0/schedule/Projects/listRecords'),
      headers: {
        'Authorization': 'Bearer pat441atTxdMXPg5d.3dfd9ec90abd2edc8a65f2d422c486a4c7f5301928357c8262cb8dcbfa648939',
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load records');
    }

    final data = jsonDecode(response.body);
    return List<Map<String, dynamic>>.from(data['records'].map((records) => records['fields']));
  }
}

class AirtableService {
  final Airtable _airtable;

  AirtableService(this._airtable);

  Base base(String baseId) {
    return _airtable.base(baseId);
  }
}