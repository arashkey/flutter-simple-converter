import 'package:map_to_class_sample/shared/iservice-responce.dart';

import 'menu.model.dart';

class Merchant extends IServiceResponce<Merchant> {
  int merchantId;
  String name;
  bool isClosed;
  bool isPublished;
  bool isFeatured;
  int priceRange;
  int rating;
  int reviewCount;
  int photoCount;
  List<Menus> menus ;

  Merchant(
      {this.merchantId,
        this.name,
        this.isClosed,
        this.isPublished,
        this.isFeatured,
        this.priceRange,
        this.rating,
        this.reviewCount,
        this.photoCount,
        this.menus});

  Merchant fromJson(Map<String, dynamic> json) {
    merchantId = json['merchant_id'];
    name = json['name'];
    isClosed = json['is_closed'];
    isPublished = json['is_published'];
    isFeatured = json['is_featured'];
    priceRange = json['price_range'];
    rating = json['rating'];
    reviewCount = json['review_count'];
    photoCount = json['photo_count'];
    if (json['menus'] != null) {
      menus = new List<Menus>();
      json['menus'].forEach((v) {
        menus.add(new Menus().fromJson(v));
      });
    }
    return this;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Merchantt_id'] = this.merchantId;
    data['name'] = this.name;
    data['is_closed'] = this.isClosed;
    data['is_published'] = this.isPublished;
    data['is_featured'] = this.isFeatured;
    data['price_range'] = this.priceRange;
    data['rating'] = this.rating;
    data['review_count'] = this.reviewCount;
    data['photo_count'] = this.photoCount;
    if (this.menus != null) {
      data['menus'] = this.menus.map((v) => v.toJson()).toList();
    }
    return data;
  }
}