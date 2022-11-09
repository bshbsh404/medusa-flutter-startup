import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sol_customer_portal/model/product_model.dart';

import 'base.dart';

class ProductApi {
  Future<List<Products>> getAllProducts() async {
    final url = Uri.parse('${Base.baseUrl}/store/products');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        var data = result['products'];

        return List<Products>.from(data.map((x) => Products.fromJson(x)));
      } else {
        return [];
      }
    } catch (e) {
      print(e.toString());
    }
    throw 'error';
  }
}
