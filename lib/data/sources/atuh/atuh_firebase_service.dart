import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';
import 'package:spotify/data/models/auth/signIn_user_req.dart';

abstract class AuthFirebaseService {
  Future<Either> signUp(CreateUserReq createUserReq);
  Future<Either> signIn(SignInUserReq signinUserReq);
}

class AtuhFirebaseServiceImpl extends AuthFirebaseService {
  @override
  Future<Either> signIn(SignInUserReq signinUserReq) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: signinUserReq.email,
        password: signinUserReq.password,
      );
      return const Right('SignIn was Succesful');
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'invalid password') {
        message = 'Пользователь для этого письма не найден';
      } else if (e.code == 'invalid-credential') {
        message = 'Для этого пользователя указан неверный пароль';
      }

      return Left(message);
    }
  }

  @override
  Future<Either> signUp(CreateUserReq createUserReq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createUserReq.email,
        password: createUserReq.password,
      );
      return const Right('SignUp was Succesful');
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'weak-password') {
        message = 'Указанный пароль слишком неделя.';
      } else if (e.code == 'email-alredy-in-use') {
        message = 'Аккаунт с таким адресом электронной почты уже существует';
      }

      return Left(message);
    }
  }
}
