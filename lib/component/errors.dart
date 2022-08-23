abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ApiFailure extends Failure {
  final int code;
  const ApiFailure({required String message, required this.code})
      : super(message);
}

class NetworkFailure extends Failure {
  const NetworkFailure({String message = "Network error occurred"})
      : super(message);
}

class AuthFailure extends Failure {
  const AuthFailure({String message = "Couldn't authenticate"})
      : super(message);
}

class CacheFailure extends Failure {
  const CacheFailure({String message = "Couldn't get data from cache"})
      : super(message);
}
