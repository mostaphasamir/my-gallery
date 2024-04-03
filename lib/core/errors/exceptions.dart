import 'package:my_gallery/core/utils/app_strings.dart';

import '../network/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel ;

  ServerException(this.errorMessageModel);

  @override
  String toString() {
    return errorMessageModel.errorMessage;
  }
}

class NoInternetException extends ServerException {
  NoInternetException([String? message])
      : super(ErrorMessageModel(errorMessage: message??AppStrings.noInternet));
}


class FetchDataException extends ServerException {
  FetchDataException([String? message])
      : super(ErrorMessageModel(errorMessage: message??AppStrings.someThingWrongHappenedTryAgainLater));
}
