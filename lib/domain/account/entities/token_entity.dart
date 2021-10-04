import 'package:equatable/equatable.dart';

class TokenEntity extends Equatable {
  final String idToken;
  final String refreshToken;
  final int? expiresIn;
  final DateTime? createdAt;

  const TokenEntity(
      {required this.idToken,
      required this.refreshToken,
      this.expiresIn,
      this.createdAt});

  TokenEntity copyWith({
    String? idToken,
    String? refreshToken,
    int? expiresIn,
    DateTime? createdAt,
  }) {
    return TokenEntity(
      idToken: idToken ?? this.idToken,
      refreshToken: refreshToken ?? this.refreshToken,
      expiresIn: expiresIn ?? this.expiresIn,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  bool get isExpired {
    if (createdAt == null || expiresIn == null) {
      return true;
    }
    final now = DateTime.now();
    final limit = createdAt!.add(Duration(seconds: expiresIn!));
    return now.isAfter(limit);
  }

  @override
  List<Object> get props => [
        idToken,
        refreshToken,
      ];
}
