


class UserbeanEntity {
	String name;
	List<String> pics;
	String email;

	UserbeanEntity({this.name, this.pics, this.email});

	UserbeanEntity.fromJson(Map<String, dynamic> json) {
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
