import 'package:paymob_payment/core/errors/exceptions.dart';
import 'package:paymob_payment/core/errors/failure.dart';
import 'package:paymob_payment/core/utils/messages_app.dart';

class CommonFunctions {

  static String msg(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return MessagesApp.serverFailureMsg;
      case FetchDataFailure:
        return MessagesApp.fetchDataMsg;
      case BadRequestFailure:
        return MessagesApp.badRequestMsg;
      case UnauthorizedFailure:
        return MessagesApp.unauthorizedMsg;
      case NotFoundFailure:
        return MessagesApp.notFoundMsg;
      case ConflictFailure:
        return MessagesApp.conflictMsg;
      case InternalServerErrorFailure:
        return MessagesApp.internalServerErrorMsg;
      case OffLineFailure:
        return MessagesApp.offLineFailureMsg;
      case EmptyCacheFailure:
        return MessagesApp.emptyCacheFailureMsg;
      case ParsingFailure:
        return MessagesApp.parsingFailureMsg;
      case RedirectFailure:
        return MessagesApp.errorMsg;

      default:
        return MessagesApp.unexpectedFailureMsg;
    }
  }

  static dynamic handleException(exception) {
    switch (exception.runtimeType) {
      case ServerException:
        return ServerFailure();
      case FetchDataException:
        return FetchDataFailure();
      case BadRequestException:
        return BadRequestFailure();
      case UnauthorizedException:
        return UnauthorizedFailure();
      case NotFoundException:
        return NotFoundFailure();
      case ConflictException:
        return ConflictFailure();
      case InternalServerErrorException:
        return InternalServerErrorFailure();
      case OffLineException:
        return OffLineFailure();
      case ParsingException:
        return ParsingFailure();
      case RedirectException:
        return RedirectFailure();

      default:
        return UnexpectedFailure();
    }
  }
}
