class UserBeanEntity{
	UserBeanPayload payload;
	String description;
	String status;

	UserBeanEntity({this.payload, this.description, this.status});

	UserBeanEntity.fromJson(Map<String, dynamic> json) {
		payload = json['payload'] != null ? new UserBeanPayload.fromJson(json['payload']) : null;
		description = json['description'];
		status = json['status'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.payload != null) {
      data['payload'] = this.payload.toJson();
    }
		data['description'] = this.description;
		data['status'] = this.status;
		return data;
	}
}

class UserBeanPayload {
	String authenticationToken;

	UserBeanPayload({this.authenticationToken});

	UserBeanPayload.fromJson(Map<String, dynamic> json) {
		authenticationToken = json['authenticationToken'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['authenticationToken'] = this.authenticationToken;
		return data;
	}
}
