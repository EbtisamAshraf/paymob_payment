import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception {


  const ServerException();

  @override
  List<Object?> get props => [];


}

class FetchDataException extends ServerException {}

class UnexpectedException extends ServerException {}

class BadRequestException extends ServerException {}

class UnauthorizedException extends ServerException {}

class NotFoundException extends ServerException {}

class ConflictException extends ServerException {}

class InternalServerErrorException extends ServerException {}

class NoInternetConnectionException extends ServerException {

}

class OffLineException implements Exception {}

class EmptyCacheException implements Exception {}

class ParsingException implements Exception {}


class RedirectException extends ServerException {

}

class AddDataException implements Exception {}

class DeleteDataException implements Exception {}

class NoDataException implements Exception {}
