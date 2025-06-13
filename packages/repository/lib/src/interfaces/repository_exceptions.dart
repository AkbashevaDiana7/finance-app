abstract class RepositoryException implements Exception {
  const RepositoryException(this.message);

  final String message;

  @override
  String toString() => '$runtimeType: $message';
}

class NotFoundException extends RepositoryException {
  const NotFoundException(super.message);
}

class ValidationException extends RepositoryException {
  const ValidationException(super.message);
}

class NetworkException extends RepositoryException {
  const NetworkException(super.message);
}

class ServerException extends RepositoryException {
  const ServerException(super.message);
}

class InsufficientFundsException extends RepositoryException {
  const InsufficientFundsException(super.message);
}
