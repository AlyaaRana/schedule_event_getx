import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:schedule_event_getx/Networking/postman/api_client.dart';
import 'package:schedule_event_getx/Networking/postman/model/event_listing_model.dart';

class EventController extends GetxController {
  final ApiClient apiClient = ApiClient();
  RxList<Event> events = <Event>[].obs;

  Future<void> fetchEvents() async {
    try {
      final response = await apiClient.get(
          Uri.parse("https://3a172639-cb3d-453f-b24d-6f69847ce8dc.mock.pstmn.io/eventlist"));

      if (response.statusCode == 200) {
        final jsonBody = json.decode(response.body);

        if (jsonBody is List<dynamic>) {
          final List<Event> fetchedEvents = jsonBody
              .map((eventJson) => Event.fromJson(eventJson as Map<String, dynamic>))
              .toList();

          events.assignAll(fetchedEvents);
        } else {
          final Event fetchedEvent = Event.fromJson(jsonBody as Map<String, dynamic>);
          events.assignAll([fetchedEvent]);
        }
      } else {
        Get.snackbar(
          "Error",
          "Failed to fetch events. Status code: ${response.statusCode}",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        "Failed to fetch events due to exception: $e",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}