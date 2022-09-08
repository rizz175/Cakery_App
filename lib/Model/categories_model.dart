class categories_model {

  String? id;
  String? name;
  String? slug;
  String? image;
  List<subcategories_model> subcategories = [];


  categories_model({required
      this.id,required this.name,required this.slug,required this.image, required this.subcategories});

  factory categories_model.fromJson(Map<String, dynamic> responseData) {
    final listData = responseData['sub_categories'] as List<dynamic>?;
    // if the reviews are not missing
    final listt = listData != null
    // map each review to a Review object
        ? listData.map((reviewData) => subcategories_model.fromJson(reviewData))
    // map() returns an Iterable so we convert it to a List
        .toList()
    // use an empty list as fallback value
        : <subcategories_model>[];
    return categories_model(

        slug:responseData['slug'],
        id: responseData['id'],
        image: responseData['image'],

        name: responseData['name'],

       subcategories:listt


    );
  }


}

class subcategories_model {
  String? id;
  String? name;
  String? image;
  String? category_id;
  String? slug;


  subcategories_model({
  required this.id,required this.name,required this.image,required this.category_id,required this.slug});

  factory subcategories_model.fromJson(Map<String, dynamic> responseData) {
    return subcategories_model(
      slug:responseData['slug'],
      name:responseData['name'],
      image:responseData['image'],
      category_id: responseData['category_id'],
      id:responseData['id'],

   );
  }
}

