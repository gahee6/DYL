class User{
  //나이 -> 출생년도, 성별, 학과, 닉네임, 학번

  User(this.pk, this.name, this.birthYear, this.major, this.sex, this.entranceYear);

  final String pk;
  final String name;
  final String major;
  final int birthYear;
  final int entranceYear;

  final Sex sex;



}
