class CheckVarifyUser {
  String? message;
  bool? status;

  CheckVarifyUser({this.message, this.status});

  factory CheckVarifyUser.fromJson(Map<String, dynamic> json) {
    return CheckVarifyUser(
      message: json['message'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}
