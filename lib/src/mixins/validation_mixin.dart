mixin ValidationMixin{
  String? validatePassword(value) {
        if (value!.length < 8) {
          return 'Password must be at least 8 characters';
        } else {
          return null;
        }
      }
  String? validateEmail(value) {
        if (!value!.contains('@')) {
          return 'Invalid Email';
        } else {
          return null;
        }
      }
}