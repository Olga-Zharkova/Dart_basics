

class User{
  String name;
  String email;
  User({required this.name, required this.email});

  String getMailSystem() {
    if (!email.contains("@")){return throw ArgumentError();}
    return email.substring(email.indexOf("@") + 1);
  }
}

//получение указателя почты (значения после @)
mixin GetMailSystem on User{
  @override
  String getMailSystem() {
    if (!email.contains("@")){return throw ArgumentError();}
    return email.substring(email.indexOf("@") + 1);
  }
}

class UserManager<T extends User>{
  var _listUser = <T>[];
  var _listEmail = <String> [];

  //добавление пользователя
  addUser(T user) => _listUser.add(user);

  //удаление пользователя
  deleteUser(T user) => _listUser.remove(user);

  //вывод списка добавленных пользователей
  String toListUser() => _listUser.toString();

  //напечатать адреса электронных почт
  List <String> printEmail(){
    _listEmail.clear();
    for(var i in _listUser){
      i is AdminUser? _listEmail.add(i.getMailSystem()):
      _listEmail.add(i.email);
    }
    return _listEmail;
  }
}

//Администратор
class AdminUser extends User with GetMailSystem{
  AdminUser({required String name, required String email}) : super(name: name, email: email);


}
//Генеральный
class GeneralUser extends User{
  GeneralUser({required String name, required String email}) : super(name: name, email: email);

}


