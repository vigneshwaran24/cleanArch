import 'package:fpdart/fpdart.dart';

import '../../core/api_call_with_error.dart';
import '../../data/remote.dart';

abstract class RepoDomain {
  Future<Either<ErrorApi, Resp>> fetchApi(Params param);
}
