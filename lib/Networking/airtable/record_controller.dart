import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'airtable_service.dart';

class RecordController extends GetxController {
  final AirtableService airtableService;

  RecordController(this.airtableService);

  var records = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    getRecords('schedule', 'Projects');
  }

  Future<List<Map<String, dynamic>>> getRecords(String baseId, String tableName) async {
    final response = await http.get(
      Uri.parse('https://api.airtable.com/v0/schedule/Projects?maxRecords=3&view=Grid%20view'),
      headers: {'Authorization': 'Bearer pat441atTxdMXPg5d.3dfd9ec90abd2edc8a65f2d422c486a4c7f5301928357c8262cb8dcbfa648939'},
    );

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return List<Map<String, dynamic>>.from(jsonResponse['records']);
    } else {
      print('Failed to load records: ${response.statusCode}');
      return []; // or throw an exception if you prefer
    }
  }

  Future<void> createRecord(Map<String, dynamic> record) async {
    try {
      await airtableService.base('schedule').table('Projects').create(record);
      records.add(record);
    } catch (e) {
      print('Failed to create record: $e');
    }
  }

  Future<void> updateRecord(Map<String, dynamic> record) async {
    try {
      await airtableService.base('schedule').table('Projects').update(record);
      final index = records.indexWhere((r) => r['id'] == record['id']);
      if (index != -1) {
        records[index] = record;
      }
    } catch (e) {
      print('Failed to update record: $e');
    }
  }

  Future<void> deleteRecord(String id) async {
    try {
      await airtableService.base('schedule').table('Projects').delete(id);
      records.removeWhere((record) => record['id'] == id);
    } catch (e) {
      print('Failed to delete record: $e');
    }
  }
}