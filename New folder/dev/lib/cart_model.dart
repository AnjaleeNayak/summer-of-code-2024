class Cart{
   
   late final int? id;
   final String? productID;
   final String? productName;
   final int? initialPrice;
   final int? productPrice;
   final int? quantity;
   final String? unitTag;

   Cart({
    required this.id,
    required this. productID,
   required this. productName,
   required this. initialPrice,
   required this. productPrice,
   required this. quantity,
   required this. unitTag,
   });

   Cart.fromMap(Map<dynamic , dynamic> res)
   : id =res['id'],
   productID = res["productID"],
   productName = res["productName"],
   initialPrice = res["initialPrice"],
   productPrice = res["productPrice"],
   quantity = res["quantity"],
   unitTag = res["unitTag"];


   



}