import 'package:json_annotation/json_annotation.dart';

part 'user_account.g.dart';

@JsonSerializable()
@_UserAccountTypeConverter()
class UserAccount {
  UserAccount({
    required this.isSelected,
    required this.type,
    required this.userName,
    required this.password,
    this.webDavServerAddress,
  });

  final bool isSelected;
  final UserAccountType type;
  final String userName;
  final String password;
  final String? webDavServerAddress;

  factory UserAccount.fromJson(Map<String, dynamic> json) =>
      _$UserAccountFromJson(json);

  Map<String, dynamic> toJson() => _$UserAccountToJson(this);
}

enum UserAccountType {
  webDav,
  google,
  apple,
}

class _UserAccountTypeConverter
    implements JsonConverter<UserAccountType, String> {
  const _UserAccountTypeConverter();

  @override
  UserAccountType fromJson(String json) {
    return switch (json) {
      "webDav" => UserAccountType.webDav,
      "google" => UserAccountType.google,
      "apple" => UserAccountType.apple,
      _ => throw Exception("Unknown UserAccountType: $json"),
    };
  }

  @override
  String toJson(UserAccountType type) {
    return switch (type) {
      UserAccountType.webDav => "webDav",
      UserAccountType.google => "google",
      UserAccountType.apple => "apple",
    };
  }
}
