import 'dart:async';

import 'package:time_tracker/app/sign_in/email_sign_in_model.dart';

class EmailSignInBloc {
  final StreamController<EmailSignInModel> _modelController =
      StreamController<EmailSignInModel>();

  Stream<EmailSignInModel> get modelStream => _modelController.stream;
  EmailSignInModel _model = EmailSignInModel();
  void dispose() {
    _modelController.close();
  }

  void updateWith({
    required String email,
    required String password,
    required EmailSignInFormType formType,
    required bool isLoading,
    required bool submitted,
  }) {
    _model = _model.copyWith(
      email: email,
      password: password,
      formType: formType,
      isLoading: isLoading,
      submitted: submitted,
    );

    _modelController.add(_model);
  }
}
