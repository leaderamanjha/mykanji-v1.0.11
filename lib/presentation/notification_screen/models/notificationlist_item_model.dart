import '../../../core/app_export.dart';

/// This class is used in the [notificationlist_item_widget] screen.
class NotificationlistItemModel {
  NotificationlistItemModel({
    this.todayText,
    this.timeText,
    this.alertText,
    this.descriptionText,
    this.id,
  }) {
    todayText = todayText ?? Rx("Today");
    timeText = timeText ?? Rx("10:02AM");
    alertText = alertText ?? Rx("New Arrival Alert: Trendy Summer Fashion...");
    descriptionText = descriptionText ??
        Rx("Just in time for summer, we've added the hottest...");
    id = id ?? Rx("");
  }

  Rx<String>? todayText;

  Rx<String>? timeText;

  Rx<String>? alertText;

  Rx<String>? descriptionText;

  Rx<String>? id;
}
