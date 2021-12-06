abstract class BaseParamsUsecase<Type, Params> {
  Future<Type> call(Params params);
}

abstract class BaseUsecase<Type> {
  Future<Type> call();
}
