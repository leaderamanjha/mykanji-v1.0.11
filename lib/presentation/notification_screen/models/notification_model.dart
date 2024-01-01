import '../../../core/app_export.dart';
import 'notificationlist_item_model.dart';

/// This class defines the variables used in the [notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel {
  Rx<List<NotificationlistItemModel>> notificationlistItemList = Rx([
    NotificationlistItemModel(
        todayText: "Today".obs,
        timeText: "10:02AM".obs,
        alertText: "New Arrival Alert: Trendy Summer Fashion...".obs,
        descriptionText:
            "Just in time for summer, we've added the hottest...".obs),
    NotificationlistItemModel(
        todayText: "Today".obs,
        timeText: "10:02AM".obs,
        alertText: "New Arrival Alert: Trendy Summer Fashion...".obs,
        descriptionText:
            "Just in time for summer, we've added the hottest...".obs),
    NotificationlistItemModel(
        todayText: "Today".obs,
        timeText: "10:02AM".obs,
        alertText: "New Arrival Alert: Trendy Summer Fashion...".obs,
        descriptionText:
            "Just in time for summer, we've added the hottest...".obs),
    NotificationlistItemModel(
        todayText: "Today".obs,
        timeText: "10:02AM".obs,
        alertText: "New Arrival Alert: Trendy Summer Fashion...".obs,
        descriptionText:
            "Just in time for summer, we've added the hottest...".obs),
    NotificationlistItemModel(
        alertText: "New Arrival Alert: Trendy Summer Fashion...".obs)
  ]);
}
