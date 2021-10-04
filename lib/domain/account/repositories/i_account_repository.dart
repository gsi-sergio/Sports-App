import 'package:dartz/dartz.dart';
import 'package:the_game_app/core/error_handler/failure/index.dart';
import 'package:the_game_app/domain/account/entities/index.dart';
import 'package:the_game_app/domain/users/entities/index.dart';

abstract class IAccountRepository {
  Future<Either<Failure, UserEntity>> login({required String email,required String password, bool keepMeSigned});
  Future<Either<Failure, bool>> register({required CreateUserEntity newUser});
  Future<Either<Failure, TokenEntity>> getToken();
  Future<Either<Failure, bool>> sendCode({required String email});
  Future<Either<Failure, bool>> activeAccount({required String email,required String code});
  Future<Either<Failure, bool>> resetPasswordAccount({required int userId,required String password, required int question, required String answer});
}
