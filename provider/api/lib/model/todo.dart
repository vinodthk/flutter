class Foodchow {
  String shopName;
  String shopId;
  String shoplogo;
  String subdomain;
  String shopType;
  String mobileno;
  String deliveryMethod;
  String cuisine;
  String city;
  String address;
  String longitude;
  String latitude;
  String distanceInKm;
  String cuisineImage;
  String currency;
  String offerList;

  Foodchow({
    required this.shopName,
    required this.shopId,
    required this.shoplogo,
    required this.subdomain,
    required this.shopType,
    required this.mobileno,
    required this.deliveryMethod,
    required this.cuisine,
    required this.city,
    required this.address,
    required this.longitude,
    required this.latitude,
    required this.distanceInKm,
    required this.cuisineImage,
    required this.currency,
    required this.offerList,
  });

  factory Foodchow.fromJson(Map<String, dynamic> map) => Foodchow(
        shopName: map["shop_name"],
        shopId: map["shop_id"],
        shoplogo: map["shoplogo"],
        subdomain: map["subdomain"],
        shopType: map["shop_type"],
        mobileno: map["mobileno"],
        deliveryMethod: map["delivery_method"],
        cuisine: map["cuisine"],
        city: map["city"],
        address: map["address"],
        longitude: map["longitude"],
        latitude: map["latitude"],
        distanceInKm: map["distance_in_km"],
        cuisineImage: map["cuisine_image"],
        currency: map["currency"],
        offerList: map["offer_list"],
      );

  toMap() => {
        "shop_name": shopName,
        "shop_id": shopId,
        "shoplogo": shoplogo,
        "subdomain": subdomain,
        "shop_type": shopType,
        "mobileno": mobileno,
        "delivery_method": deliveryMethod,
        "cuisine": cuisine,
        "city": city,
        "address": address,
        "longitude": longitude,
        "latitude": latitude,
        "distance_in_km": distanceInKm,
        "cuisine_image": cuisineImage,
        "currency": currency,
        "offer_list": offerList,
      };
}
