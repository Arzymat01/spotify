import 'package:get_it/get_it.dart';
import 'package:spotify/data/reoository/auth/auth_repository_impl.dart';
import 'package:spotify/data/sources/atuh/atuh_firebase_service.dart';
import 'package:spotify/domain/repository/auth/auth.dart';
import 'package:spotify/domain/usecases/auth/signUp.dart';

final sl = GetIt.instance;
Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(
    AtuhFirebaseServiceImpl(),
  );

  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(),
  );
  sl.registerSingleton<SignUpUseCase>(
    SignUpUseCase(),
  );
}
