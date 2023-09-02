import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [];

}

class ServerFailure extends Failure {}

class OffLineFailure extends Failure {}

class EmptyCacheFailure extends Failure {}

class FetchDataFailure extends Failure {}

class BadRequestFailure extends Failure {}

class UnauthorizedFailure extends Failure {}

class NotFoundFailure extends Failure {}

class ConflictFailure extends Failure {}

class InternalServerErrorFailure extends Failure {}

class UnexpectedFailure extends Failure {}

class ParsingFailure extends Failure {}

class RedirectFailure extends Failure {}

class AddDataFailure extends Failure {}

class DeleteDataFailure extends Failure {}

class NoDataFailure extends Failure {}
