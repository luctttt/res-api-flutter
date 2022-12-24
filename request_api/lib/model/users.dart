class User {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  User({int? postId, int? id, String? name, String? email, String? body}) {
    if (postId != null) {
      postId = postId;
    }
    if (id != null) {
      id = id;
    }
    if (name != null) {
      name = name;
    }
    if (email != null) {
      email = email;
    }
    if (body != null) {
      body = body;
    }
  }

  User.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['postId'] = postId;
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['body'] = body;
    return data;
  }
}
