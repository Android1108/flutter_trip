class BasebeanEntity<T> {
  String payload;
  String description;
  String status;

  BasebeanEntity({this.payload, this.description, this.status});

  BasebeanEntity.fromJson(Map<String, dynamic> json) {
    payload = json['payload'];
    description = json['description'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['payload'] = this.payload;
    data['description'] = this.description;
    data['status'] = this.status;
    return data;
  }
}
