class feature_product_model {
  String? id;
  String? name;
  String? slug;
  String? ref;
  String? var_applied;
  String? stock;
  String? description;
  String? image;
  String? is_featured;
  String? vat_per;
  String? calculated_price;
  String? is_options;
  List<characteristics_model> charesteristic = [];

  feature_product_model(
      {required this.id,
      required this.name,
      required this.slug,
      required this.ref,
      required this.var_applied,
      required this.stock,
      required this.description,
      required this.image,
      required this.is_featured,
      required this.vat_per,
      required this.calculated_price,
      required this.is_options,
      required this.charesteristic});


  factory feature_product_model.fromJson(Map<String, dynamic> responseData) {
    final listData = responseData['characteristic_options'] as List<dynamic>?;
    // if the reviews are not missing
    final listt = listData != null
    // map each review to a Review object
        ? listData.map((reviewData) => characteristics_model.fromJson(reviewData))
    // map() returns an Iterable so we convert it to a List
        .toList()
    // use an empty list as fallback value
        : <characteristics_model>[];
    return feature_product_model(
        calculated_price: responseData['calculated_price'].toString(),
        ref: responseData['ref'].toString(),
        description:responseData['description'].toString(),
        slug:responseData['slug'], id: responseData['id'].toString(),
        is_featured:responseData['is_featured'].toString(),
        is_options: responseData['is_options'].toString(),
        image: responseData['image'].toString(),
        vat_per:responseData['vat_per'].toString(),
        name: responseData['name'].toString(),
        var_applied: responseData['var_applied'].toString(),
        stock:responseData['stock'].toString(),
        charesteristic:listt


    );
  }


}

class characteristics_model {
  String? id;
  String? pack_of;
  String? calculated_price;
  Pivot? pivot;

  characteristics_model(
      {this.id, this.pack_of, this.calculated_price, this.pivot});

  factory characteristics_model.fromJson(Map<String, dynamic> responseData) {
    return characteristics_model(
        id: responseData['id'].toString() ?? "",
        pack_of: responseData['pack_of'].toString() ?? "",
        calculated_price: responseData['calculated_price'].toString() ?? "",
        pivot: Pivot.fromJson(responseData['pivot']));
  }
}

class Pivot {
  String? product_id;
  String? charactertic_option_id;
  String? cost;
  String? markup_per_customer;
  String? markup_per_franchise;
  String? price_customer;
  String? price_franchise;

  Pivot(
      {this.product_id,
      this.charactertic_option_id,
      this.cost,
      this.markup_per_customer,
      this.markup_per_franchise,
      this.price_customer,
      this.price_franchise});

  factory Pivot.fromJson(Map<String, dynamic> responseData) {
    return Pivot(
      product_id: responseData['product_id'].toString() ?? "",
      charactertic_option_id:
          responseData['characteristic_option_id'].toString() ?? "",
      cost: responseData['cost'].toString() ?? "",
      markup_per_customer: responseData['markup_per_customer'].toString() ?? "",
      markup_per_franchise:
          responseData['markup_per_franchise'].toString() ?? "",
      price_customer: responseData['price_customer'].toString() ?? "",
      price_franchise: responseData['price_franchise'].toString() ?? "",
    );
  }
}
