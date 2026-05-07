import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:book_finder_app/app/core/network/base_response.dart';

Future<BaseResponse<T>> safeApiCall<T>({
  required Future<http.Response> Function() call,
  bool isBaseResponse = false,
}) async {
  debugPrint('safeApiCall: Starting API call, isBaseResponse=$isBaseResponse');
  try {
    final response = await call();
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return SuccessResponse(data: response.body as T);
    } else {
      return ErrorResponse(
        error: "Failed with status code: ${response.statusCode}",
      );
    }
  } on http.ClientException catch (dioError) {
    final responseData = dioError.uri?.data;
    String errorDetail;
    final responseError = (responseData is Map)
        ? (responseData as Map)['error']
        : null;
    if (responseError != null) {
      errorDetail = responseError.toString();
    } else if (dioError.message.isNotEmpty) {
      errorDetail = dioError.message;
    } else {
      errorDetail = 'Unknown Dio error';
    }
    return ErrorResponse(error: errorDetail);
  } catch (e) {
    return ErrorResponse(error: "Unexpected error: $e");
  }
}
