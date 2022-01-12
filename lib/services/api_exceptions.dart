abstract class ApiException {
  final String message;

  ApiException(this.message);

  @override
  String toString() {
    return 'ApiException{message: $message}';
  }
}

class BadRequestException extends ApiException {
  BadRequestException() : super('Bad Request');

  @override
  String toString() {
    return 'BadRequestException{message: $message}';
  }
}

class UnauthorisedException extends ApiException {
  UnauthorisedException() : super('Unauthorised');

  @override
  String toString() {
    return 'UnauthorisedException{message: $message}';
  }
}

class NotFoundException extends ApiException {
  NotFoundException() : super('Not Found');

  @override
  String toString() {
    return 'NotFoundException{message: $message}';
  }
}

class FetchDataException extends ApiException {
  FetchDataException(String message) : super(message);

  @override
  String toString() {
    return 'FetchDataException{message: $message}';
  }
}
