import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';

abstract class AtuthFirebaseService {
  Future<void> signUp(CreateUserReq createUserReq);
  Future<void> signIn();
}

class AtuhFirebaseServiceImpl extends AtuthFirebaseService {
  @override
  Future<void> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signUp(CreateUserReq createUserReq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: CreateUserReq.email,
        password: CreateUserReq.password,
      );
    } on FirebaseAuthException catch (e) {}
  }
}
