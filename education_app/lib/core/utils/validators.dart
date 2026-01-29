//r raw string
//^ start $ end
//+ outside [] means more character
//\. exact dot not any character
//[a-zA-Z0-9.%] lowercase, uppercase, special characters, numbers
//(?=.*[a-z]) a to z one letter at least should be
//(?=.*[A-Z]) A to Z one letter at least should be
//(?=.*[@$!%*?&]) special characters one letter at least should be
//{8,} 8 characters at least
class Validators{


  static String ?emailValidator(String? email){
    final regex = RegExp(r'^[a-zA-Z0-9.%_+-]+@gmail\.com$');
    if(email == null ||email.isEmpty) {
      return 'Email is required';
    }
    else if(!regex.hasMatch(email)){
      return 'Enter a valid email address';
    }
    else{
      return null;
    }
  }

  static String? passValidator(String ?password) {
    final regex = RegExp(
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&#])[A-Za-z\d@$!%*?&#]{8,}$'
    );
    if(password == null || password.isEmpty){
      return 'Password is required';
    }
    else if (password.length < 8) {
      return 'Password must be at least 8 characters';
    }
    else if (!RegExp(r'[A-Z]').hasMatch(password)) {
      return 'Password must contain at least one uppercase letter';
    }
    else if(!RegExp(r'[a-z]').hasMatch(password)) {
      return 'Password must contain at least one lowercase letter';
    }
    else if (!RegExp(r'\d').hasMatch(password)) {
      return 'Password must contain at least one number';
    }
    else if (!RegExp(r'[@$!%*?&#]').hasMatch(password)) {
      return 'Password must contain at least one special character';
    }
    else{
      return null;
    }
  }
}