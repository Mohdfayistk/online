class Login {
  Login({
      this.tokens, 
      this.user,});

  Login.fromJson(dynamic json) {
    tokens = json['tokens'] != null ? Tokens.fromJson(json['tokens']) : null;
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  Tokens? tokens;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (tokens != null) {
      map['tokens'] = tokens?.toJson();
    }
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

class User {
  User({
      this.id, 
      this.email, 
      this.role, 
      this.blocked, 
      this.username, 
      this.verified,});

  User.fromJson(dynamic json) {
    id = json['id'];
    email = json['email'];
    role = json['role'];
    blocked = json['blocked'];
    username = json['username'];
    verified = json['verified'];
  }
  String? id;
  String? email;
  String? role;
  bool? blocked;
  String? username;
  bool? verified;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['email'] = email;
    map['role'] = role;
    map['blocked'] = blocked;
    map['username'] = username;
    map['verified'] = verified;
    return map;
  }

}

class Tokens {
  Tokens({
      this.accessToken, 
      this.refreshToken,});

  Tokens.fromJson(dynamic json) {
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
  }
  String? accessToken;
  String? refreshToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['access_token'] = accessToken;
    map['refresh_token'] = refreshToken;
    return map;
  }

}