class User2Entity {
	User2Data data;
	int statusCode;

	User2Entity({this.data, this.statusCode});

	User2Entity.fromJson(Map<String, dynamic> json) {
		data = json['data'] != null ? new User2Data.fromJson(json['data']) : null;
		statusCode = json['statusCode'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		data['statusCode'] = this.statusCode;
		return data;
	}
}

class User2Data {
	String name;
	List<String> pics;
	String email;

	User2Data({this.name, this.pics, this.email});

	User2Data.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		pics = json['pics']?.cast<String>();
		email = json['email'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['pics'] = this.pics;
		data['email'] = this.email;
		return data;
	}
}
