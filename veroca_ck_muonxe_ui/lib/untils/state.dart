import 'dart:ui';

enum State { Signed, created, approved }

extension state_extension_color on State {
  Color get colorCreated => Color(0xFFF68C34);

  Color get colorSigned => Color(0xFF298EF2);

  Color get colorApproved => Color(0xFF098834);
}

extension state_extension_title on State {
  String get title {
    if (this == State.created) {
      return "Mới tạo";
    } else if (this == State.Signed) {
      return "Đã ký";
    } else {
      return "Duyệt";
    }
  }
}

class User {
  String name;
  String vin;
  State state;
  String detail;
  String codeId;
  String date;

  User(this.name, this.vin, this.state, this.detail, this.codeId, this.date);
}

var FAKE_DATA = [
  User(
      'Nguyễn Văn A',
      'KMFWBX7RAHU863151',
      State.approved,
      'CRETA 1.6 AT 2017 - MÁY XĂNG (EU4) ',
      'CK.CBT.30172',
      '2022-10-20 - 2022-10-22')
];
