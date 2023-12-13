import 'package:dio/dio.dart';
import 'package:search_product_and_animation/model/product_model.dart';

getData() async {
  Dio dio = Dio();
  Response response = await dio.get('https://dummyjson.com/products');
  if (response.statusCode == 200) {
    return response.data;
  } else {
    return 'error';
  }
}
