class ErrorMessageModel {
  String errorMessage;

  ErrorMessageModel({
    required this.errorMessage,
  });

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) => ErrorMessageModel(
    errorMessage: json["error_message"],
  );
}