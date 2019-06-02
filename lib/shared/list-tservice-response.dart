 import 'iservice-responce.dart';
import 'dart:core';


class ListTServiceResponse<T extends IServiceResponce>  {
  List<T> listResult = List<T>();


  List<T> fromJson(List<Map<String, dynamic>>  json, T instance) {

    return _makeListResult(json, instance);
   }

  List<T> _makeListResult(List<Map<String, dynamic>>  json, T instance) {
    json.forEach((Map v) {
      listResult.add(instance.fromJson(v));
    });
    return listResult;
  }
}
