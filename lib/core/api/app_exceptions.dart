enum AppExceptions {
  requestCancelled,
  badRequest,
  notFound,
  requestTimeout,
  unexpectedError,
  serviceUnavailable,
  noInternetConnection,
  internalServerError,
  conflict,
  unauthorizedRequest
}

extension AppExceptionsExt on AppExceptions {
  static AppExceptions handleResponse(int statusCode) {
    switch (statusCode) {
      case 403:
        return AppExceptions.unauthorizedRequest;
      case 404:
        return AppExceptions.notFound;
      case 409:
        return AppExceptions.conflict;
      case 408:
        return AppExceptions.requestTimeout;
      case 500:
        return AppExceptions.internalServerError;
      case 503:
        return AppExceptions.serviceUnavailable;
      default:
        return AppExceptions.unexpectedError;
    }
  }
}
