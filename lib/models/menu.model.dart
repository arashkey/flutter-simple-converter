import 'package:map_to_class_sample/shared/iservice-responce.dart';

class Menus extends IServiceResponce<Menus>{
  int menuId;
  String name;
  String subtitle;
  bool isPublished;
  bool isFeatured;
  List<String> categories;

  Menus(
      {this.menuId,
        this.name,
        this.subtitle,
        this.isPublished,
        this.isFeatured,
        this.categories});

  Menus fromJson(Map<String, dynamic> json) {
    menuId = json['menu_id'];
    name = json['name'];
    subtitle = json['subtitle'];
    isPublished = json['is_published'];
    isFeatured = json['is_featured'];
    categories = json['categories'].cast<String>();
    return this;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['menu_id'] = this.menuId;
    data['name'] = this.name;
    data['subtitle'] = this.subtitle;
    data['is_published'] = this.isPublished;
    data['is_featured'] = this.isFeatured;
    data['categories'] = this.categories;
    return data;
  }
}