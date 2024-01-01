import '../../../core/app_export.dart';
import 'orderdetailslist_item_model.dart';

/// This class defines the variables used in the [orders_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrdersModel {
  Rx<List<OrderdetailslistItemModel>> orderdetailslistItemList = Rx([
    OrderdetailslistItemModel(
        orderID: "Order ID - [Order_ID]".obs,
        itemCount: "(1 Item)".obs,
        orderStatus: "[Order_Status] | ".obs,
        statusChangeDate: "[Status_Change_Date]".obs,
        serviceDetails:
            "[Service_Type]: [Clothing_Name] +  [Clothing_Type]".obs,
        priceAndDelivery: "Price: ₹2000 | Delivery - 10 days".obs),
    OrderdetailslistItemModel(
        orderID: "Order ID - [Order_ID]".obs,
        itemCount: "(1 Item)".obs,
        orderStatus: "[Order_Status] | ".obs,
        statusChangeDate: "[Status_Change_Date]".obs,
        serviceDetails:
            "[Service_Type]: [Clothing_Name] +  [Clothing_Type]".obs,
        priceAndDelivery: "Price: ₹2000 | Delivery - 10 days".obs)
  ]);
}
