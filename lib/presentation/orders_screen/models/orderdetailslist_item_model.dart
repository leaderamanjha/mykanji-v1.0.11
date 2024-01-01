import '../../../core/app_export.dart';

/// This class is used in the [orderdetailslist_item_widget] screen.
class OrderdetailslistItemModel {
  OrderdetailslistItemModel({
    this.orderID,
    this.itemCount,
    this.orderStatus,
    this.statusChangeDate,
    this.serviceDetails,
    this.priceAndDelivery,
    this.id,
  }) {
    orderID = orderID ?? Rx("Order ID - [Order_ID]");
    itemCount = itemCount ?? Rx("(1 Item)");
    orderStatus = orderStatus ?? Rx("[Order_Status] | ");
    statusChangeDate = statusChangeDate ?? Rx("[Status_Change_Date]");
    serviceDetails = serviceDetails ??
        Rx("[Service_Type]: [Clothing_Name] +  [Clothing_Type]");
    priceAndDelivery =
        priceAndDelivery ?? Rx("Price: ₹2000 | Delivery - 10 days");
    id = id ?? Rx("");
  }

  Rx<String>? orderID;

  Rx<String>? itemCount;

  Rx<String>? orderStatus;

  Rx<String>? statusChangeDate;

  Rx<String>? serviceDetails;

  Rx<String>? priceAndDelivery;

  Rx<String>? id;
}
