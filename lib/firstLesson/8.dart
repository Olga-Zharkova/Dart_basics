

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
  String getMailSystem() {
    if (!email.contains("@")){return throw ArgumentError();}
    return email.substring(email.indexOf("@") + 1);
  }
}

class UserManager<T extends User>{
  var listUser = <T>[];
  var listEmail = <String> [];

  //добавление пользователя
  addUser(T user) => listUser.add(user);

  //удаление пользователя
  deleteUser(T user) => listUser.remove(user);

  //вывод списка добавленных пользователей
  String toListUser() => listUser.toString();

  //напечатать адреса электронных почт
  List <String> printEmail(){
    listEmail.clear();
    for(var i in listUser){
      i is AdminUser? listEmail.add(i.getMailSystem()):
      listEmail.add(i.email);
    }
    return listEmail;
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


