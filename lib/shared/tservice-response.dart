 import 'iservice-responce.dart';
import 'dart:core';

class TServiceResponse<T extends IServiceResponce> {
  T result;

  Map<String, dynamic> json;

//
//  TServiceResponse(IServiceResponce<T> res, bool success, String msg)
//      : super(success, msg) {
//    this.result = res;
//  }

  TServiceResponse(Map<String, dynamic> json, T instance) {
    this.json = json;
    this.result = instance.fromJson(json);
  }

  TServiceResponse<T> fromJson(Map<String, dynamic> map) {
    this.result = result.fromJson(map );
    return this;
  }
}
