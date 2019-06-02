import 'package:map_to_class_sample/models/merchant.model.dart';
import 'package:map_to_class_sample/shared/tservice-response.dart';

class MerchantService {
  String baseUrl;

  MerchantService() {
    this.baseUrl = '/api/merchant';
  }

  Future<TServiceResponse<Merchant>> getMerchantAsync() async {
    //get data from server like this
    Map<String, dynamic> responseBody = {
      "merchant_id": 27,
      "name": "grtttttttttttetrhuih",
      "is_closed": false,
      "is_published": false,
      "is_featured": false,
      "price_range": 0,
      "rating": 0,
      "review_count": 0,
      "photo_count": 0,
      "menus": [
        {
          "menu_id": 28,
          "name": "erewewg",
          "subtitle": "gregre",
          "is_published": false,
          "is_featured": false,
          "categories": ["Salads"]
        }
      ]
    };
    var result = TServiceResponse<Merchant>(responseBody, new Merchant());
    print(result);
    return result;
  }
}
