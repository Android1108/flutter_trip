class LoginEntity {
	String authenticationToken;

	LoginEntity({this.authenticationToken});

	LoginEntity.fromJson(Map<String, dynamic> json) {
		authenticationToken = json['authenticationToken'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['authenticationToken'] = this.authenticationToken;
		return data;
	}
}
