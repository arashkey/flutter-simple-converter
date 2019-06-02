 import 'iservice-responce.dart';
import 'dart:core';


class ListTServiceResponse<T extends IServiceResponce>  {
  List<T> listResult = List<T>();


  fromJson(Map<String, dynamic> json, T instance) {

    listResult = _makeListResult(json, instance);
    return this;
  }

  List<T> _makeListResult(Map<String, dynamic> json, T instance) {
    json['result'].forEach((Map v) {
      listResult.add(instance.fromJson(v));
    });
    return listResult;
  }
}
