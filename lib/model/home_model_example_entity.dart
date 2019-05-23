class HomeModelExampleEntity {
	List<HomeModelExampleBannerlist> bannerList;
	List<HomeModelExampleSubnavlist> subNavList;
	List<HomeModelExampleLocalnavlist> localNavList;
	HomeModelExampleSalesbox salesBox;
	HomeModelExampleConfig config;
	HomeModelExampleGridnav gridNav;

	HomeModelExampleEntity({this.bannerList, this.subNavList, this.localNavList, this.salesBox, this.config, this.gridNav});

	HomeModelExampleEntity.fromJson(Map<String, dynamic> json) {
		if (json['bannerList'] != null) {
			bannerList = new List<HomeModelExampleBannerlist>();(json['bannerList'] as List).forEach((v) { bannerList.add(new HomeModelExampleBannerlist.fromJson(v)); });
		}
		if (json['subNavList'] != null) {
			subNavList = new List<HomeModelExampleSubnavlist>();(json['subNavList'] as List).forEach((v) { subNavList.add(new HomeModelExampleSubnavlist.fromJson(v)); });
		}
		if (json['localNavList'] != null) {
			localNavList = new List<HomeModelExampleLocalnavlist>();(json['localNavList'] as List).forEach((v) { localNavList.add(new HomeModelExampleLocalnavlist.fromJson(v)); });
		}
		salesBox = json['salesBox'] != null ? new HomeModelExampleSalesbox.fromJson(json['salesBox']) : null;
		config = json['config'] != null ? new HomeModelExampleConfig.fromJson(json['config']) : null;
		gridNav = json['gridNav'] != null ? new HomeModelExampleGridnav.fromJson(json['gridNav']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.bannerList != null) {
      data['bannerList'] =  this.bannerList.map((v) => v.toJson()).toList();
    }
		if (this.subNavList != null) {
      data['subNavList'] =  this.subNavList.map((v) => v.toJson()).toList();
    }
		if (this.localNavList != null) {
      data['localNavList'] =  this.localNavList.map((v) => v.toJson()).toList();
    }
		if (this.salesBox != null) {
      data['salesBox'] = this.salesBox.toJson();
    }
		if (this.config != null) {
      data['config'] = this.config.toJson();
    }
		if (this.gridNav != null) {
      data['gridNav'] = this.gridNav.toJson();
    }
		return data;
	}
}

class HomeModelExampleBannerlist {
	String icon;
	String url;

	HomeModelExampleBannerlist({this.icon, this.url});

	HomeModelExampleBannerlist.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['url'] = this.url;
		return data;
	}
}

class HomeModelExampleSubnavlist {
	String icon;
	String title;
	String url;
	bool hideAppBar;

	HomeModelExampleSubnavlist({this.icon, this.title, this.url, this.hideAppBar});

	HomeModelExampleSubnavlist.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeModelExampleLocalnavlist {
	String statusBarColor;
	String icon;
	String title;
	String url;
	bool hideAppBar;

	HomeModelExampleLocalnavlist({this.statusBarColor, this.icon, this.title, this.url, this.hideAppBar});

	HomeModelExampleLocalnavlist.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeModelExampleSalesbox {
	HomeModelExampleSalesboxBigcard2 bigCard2;
	HomeModelExampleSalesboxSmallcard4 smallCard4;
	HomeModelExampleSalesboxSmallcard3 smallCard3;
	HomeModelExampleSalesboxBigcard1 bigCard1;
	HomeModelExampleSalesboxSmallcard2 smallCard2;
	HomeModelExampleSalesboxSmallcard1 smallCard1;
	String icon;
	String moreUrl;

	HomeModelExampleSalesbox({this.bigCard2, this.smallCard4, this.smallCard3, this.bigCard1, this.smallCard2, this.smallCard1, this.icon, this.moreUrl});

	HomeModelExampleSalesbox.fromJson(Map<String, dynamic> json) {
		bigCard2 = json['bigCard2'] != null ? new HomeModelExampleSalesboxBigcard2.fromJson(json['bigCard2']) : null;
		smallCard4 = json['smallCard4'] != null ? new HomeModelExampleSalesboxSmallcard4.fromJson(json['smallCard4']) : null;
		smallCard3 = json['smallCard3'] != null ? new HomeModelExampleSalesboxSmallcard3.fromJson(json['smallCard3']) : null;
		bigCard1 = json['bigCard1'] != null ? new HomeModelExampleSalesboxBigcard1.fromJson(json['bigCard1']) : null;
		smallCard2 = json['smallCard2'] != null ? new HomeModelExampleSalesboxSmallcard2.fromJson(json['smallCard2']) : null;
		smallCard1 = json['smallCard1'] != null ? new HomeModelExampleSalesboxSmallcard1.fromJson(json['smallCard1']) : null;
		icon = json['icon'];
		moreUrl = json['moreUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.bigCard2 != null) {
      data['bigCard2'] = this.bigCard2.toJson();
    }
		if (this.smallCard4 != null) {
      data['smallCard4'] = this.smallCard4.toJson();
    }
		if (this.smallCard3 != null) {
      data['smallCard3'] = this.smallCard3.toJson();
    }
		if (this.bigCard1 != null) {
      data['bigCard1'] = this.bigCard1.toJson();
    }
		if (this.smallCard2 != null) {
      data['smallCard2'] = this.smallCard2.toJson();
    }
		if (this.smallCard1 != null) {
      data['smallCard1'] = this.smallCard1.toJson();
    }
		data['icon'] = this.icon;
		data['moreUrl'] = this.moreUrl;
		return data;
	}
}

class HomeModelExampleSalesboxBigcard2 {
	String icon;
	String title;
	String url;

	HomeModelExampleSalesboxBigcard2({this.icon, this.title, this.url});

	HomeModelExampleSalesboxBigcard2.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeModelExampleSalesboxSmallcard4 {
	String icon;
	String title;
	String url;

	HomeModelExampleSalesboxSmallcard4({this.icon, this.title, this.url});

	HomeModelExampleSalesboxSmallcard4.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeModelExampleSalesboxSmallcard3 {
	String icon;
	String title;
	String url;

	HomeModelExampleSalesboxSmallcard3({this.icon, this.title, this.url});

	HomeModelExampleSalesboxSmallcard3.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeModelExampleSalesboxBigcard1 {
	String icon;
	String title;
	String url;

	HomeModelExampleSalesboxBigcard1({this.icon, this.title, this.url});

	HomeModelExampleSalesboxBigcard1.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeModelExampleSalesboxSmallcard2 {
	String icon;
	String title;
	String url;

	HomeModelExampleSalesboxSmallcard2({this.icon, this.title, this.url});

	HomeModelExampleSalesboxSmallcard2.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeModelExampleSalesboxSmallcard1 {
	String icon;
	String title;
	String url;

	HomeModelExampleSalesboxSmallcard1({this.icon, this.title, this.url});

	HomeModelExampleSalesboxSmallcard1.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeModelExampleConfig {
	String searchUrl;

	HomeModelExampleConfig({this.searchUrl});

	HomeModelExampleConfig.fromJson(Map<String, dynamic> json) {
		searchUrl = json['searchUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['searchUrl'] = this.searchUrl;
		return data;
	}
}

class HomeModelExampleGridnav {
	HomeModelExampleGridnavFlight flight;
	HomeModelExampleGridnavHotel hotel;
	HomeModelExampleGridnavTravel travel;
	HomeModelExampleGridnav({this.flight, this.hotel, this.travel});

	HomeModelExampleGridnav.fromJson(Map<String, dynamic> json) {
		flight = json['flight'] != null ? new HomeModelExampleGridnavFlight.fromJson(json['flight']) : null;
		hotel = json['hotel'] != null ? new HomeModelExampleGridnavHotel.fromJson(json['hotel']) : null;
		travel = json['travel'] != null ? new HomeModelExampleGridnavTravel.fromJson(json['travel']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.flight != null) {
      data['flight'] = this.flight.toJson();
    }
		if (this.hotel != null) {
      data['hotel'] = this.hotel.toJson();
    }
		if (this.travel != null) {
      data['travel'] = this.travel.toJson();
    }
		return data;
	}
}

class HomeModelExampleGridnavFlight {
	HomeModelExampleGridnavFlightItem2 item2;
	HomeModelExampleGridnavFlightItem1 item1;
	String endColor;
	HomeModelExampleGridnavFlightMainitem mainItem;
	HomeModelExampleGridnavFlightItem4 item4;
	HomeModelExampleGridnavFlightItem3 item3;
	String startColor;

	HomeModelExampleGridnavFlight({this.item2, this.item1, this.endColor, this.mainItem, this.item4, this.item3, this.startColor});

	HomeModelExampleGridnavFlight.fromJson(Map<String, dynamic> json) {
		item2 = json['item2'] != null ? new HomeModelExampleGridnavFlightItem2.fromJson(json['item2']) : null;
		item1 = json['item1'] != null ? new HomeModelExampleGridnavFlightItem1.fromJson(json['item1']) : null;
		endColor = json['endColor'];
		mainItem = json['mainItem'] != null ? new HomeModelExampleGridnavFlightMainitem.fromJson(json['mainItem']) : null;
		item4 = json['item4'] != null ? new HomeModelExampleGridnavFlightItem4.fromJson(json['item4']) : null;
		item3 = json['item3'] != null ? new HomeModelExampleGridnavFlightItem3.fromJson(json['item3']) : null;
		startColor = json['startColor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
		if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
		data['endColor'] = this.endColor;
		if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
		if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
		if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
		data['startColor'] = this.startColor;
		return data;
	}
}

class HomeModelExampleGridnavFlightItem2 {
	String title;
	String url;

	HomeModelExampleGridnavFlightItem2({this.title, this.url});

	HomeModelExampleGridnavFlightItem2.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeModelExampleGridnavFlightItem1 {
	String title;
	String url;
	bool hideAppBar;

	HomeModelExampleGridnavFlightItem1({this.title, this.url, this.hideAppBar});

	HomeModelExampleGridnavFlightItem1.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeModelExampleGridnavFlightMainitem {
	String icon;
	String title;
	String url;

	HomeModelExampleGridnavFlightMainitem({this.icon, this.title, this.url});

	HomeModelExampleGridnavFlightMainitem.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeModelExampleGridnavFlightItem4 {
	String title;
	String url;
	bool hideAppBar;

	HomeModelExampleGridnavFlightItem4({this.title, this.url, this.hideAppBar});

	HomeModelExampleGridnavFlightItem4.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeModelExampleGridnavFlightItem3 {
	String title;
	String url;
	bool hideAppBar;

	HomeModelExampleGridnavFlightItem3({this.title, this.url, this.hideAppBar});

	HomeModelExampleGridnavFlightItem3.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeModelExampleGridnavHotel {
	HomeModelExampleGridnavHotelItem2 item2;
	HomeModelExampleGridnavHotelItem1 item1;
	String endColor;
	HomeModelExampleGridnavHotelMainitem mainItem;
	HomeModelExampleGridnavHotelItem4 item4;
	HomeModelExampleGridnavHotelItem3 item3;
	String startColor;

	HomeModelExampleGridnavHotel({this.item2, this.item1, this.endColor, this.mainItem, this.item4, this.item3, this.startColor});

	HomeModelExampleGridnavHotel.fromJson(Map<String, dynamic> json) {
		item2 = json['item2'] != null ? new HomeModelExampleGridnavHotelItem2.fromJson(json['item2']) : null;
		item1 = json['item1'] != null ? new HomeModelExampleGridnavHotelItem1.fromJson(json['item1']) : null;
		endColor = json['endColor'];
		mainItem = json['mainItem'] != null ? new HomeModelExampleGridnavHotelMainitem.fromJson(json['mainItem']) : null;
		item4 = json['item4'] != null ? new HomeModelExampleGridnavHotelItem4.fromJson(json['item4']) : null;
		item3 = json['item3'] != null ? new HomeModelExampleGridnavHotelItem3.fromJson(json['item3']) : null;
		startColor = json['startColor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
		if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
		data['endColor'] = this.endColor;
		if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
		if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
		if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
		data['startColor'] = this.startColor;
		return data;
	}
}

class HomeModelExampleGridnavHotelItem2 {
	String title;
	String url;

	HomeModelExampleGridnavHotelItem2({this.title, this.url});

	HomeModelExampleGridnavHotelItem2.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeModelExampleGridnavHotelItem1 {
	String statusBarColor;
	String title;
	String url;

	HomeModelExampleGridnavHotelItem1({this.statusBarColor, this.title, this.url});

	HomeModelExampleGridnavHotelItem1.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeModelExampleGridnavHotelMainitem {
	String statusBarColor;
	String icon;
	String title;
	String url;

	HomeModelExampleGridnavHotelMainitem({this.statusBarColor, this.icon, this.title, this.url});

	HomeModelExampleGridnavHotelMainitem.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeModelExampleGridnavHotelItem4 {
	String title;
	String url;
	bool hideAppBar;

	HomeModelExampleGridnavHotelItem4({this.title, this.url, this.hideAppBar});

	HomeModelExampleGridnavHotelItem4.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeModelExampleGridnavHotelItem3 {
	String title;
	String url;
	bool hideAppBar;

	HomeModelExampleGridnavHotelItem3({this.title, this.url, this.hideAppBar});

	HomeModelExampleGridnavHotelItem3.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeModelExampleGridnavTravel {
	HomeModelExampleGridnavTravelItem2 item2;
	HomeModelExampleGridnavTravelItem1 item1;
	String endColor;
	HomeModelExampleGridnavTravelMainitem mainItem;
	HomeModelExampleGridnavTravelItem4 item4;
	HomeModelExampleGridnavTravelItem3 item3;
	String startColor;

	HomeModelExampleGridnavTravel({this.item2, this.item1, this.endColor, this.mainItem, this.item4, this.item3, this.startColor});

	HomeModelExampleGridnavTravel.fromJson(Map<String, dynamic> json) {
		item2 = json['item2'] != null ? new HomeModelExampleGridnavTravelItem2.fromJson(json['item2']) : null;
		item1 = json['item1'] != null ? new HomeModelExampleGridnavTravelItem1.fromJson(json['item1']) : null;
		endColor = json['endColor'];
		mainItem = json['mainItem'] != null ? new HomeModelExampleGridnavTravelMainitem.fromJson(json['mainItem']) : null;
		item4 = json['item4'] != null ? new HomeModelExampleGridnavTravelItem4.fromJson(json['item4']) : null;
		item3 = json['item3'] != null ? new HomeModelExampleGridnavTravelItem3.fromJson(json['item3']) : null;
		startColor = json['startColor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
		if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
		data['endColor'] = this.endColor;
		if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
		if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
		if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
		data['startColor'] = this.startColor;
		return data;
	}
}

class HomeModelExampleGridnavTravelItem2 {
	String statusBarColor;
	String title;
	String url;
	bool hideAppBar;

	HomeModelExampleGridnavTravelItem2({this.statusBarColor, this.title, this.url, this.hideAppBar});

	HomeModelExampleGridnavTravelItem2.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeModelExampleGridnavTravelItem1 {
	String statusBarColor;
	String title;
	String url;
	bool hideAppBar;

	HomeModelExampleGridnavTravelItem1({this.statusBarColor, this.title, this.url, this.hideAppBar});

	HomeModelExampleGridnavTravelItem1.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeModelExampleGridnavTravelMainitem {
	String statusBarColor;
	String icon;
	String title;
	String url;
	bool hideAppBar;

	HomeModelExampleGridnavTravelMainitem({this.statusBarColor, this.icon, this.title, this.url, this.hideAppBar});

	HomeModelExampleGridnavTravelMainitem.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeModelExampleGridnavTravelItem4 {
	String title;
	String url;
	bool hideAppBar;

	HomeModelExampleGridnavTravelItem4({this.title, this.url, this.hideAppBar});

	HomeModelExampleGridnavTravelItem4.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeModelExampleGridnavTravelItem3 {
	String title;
	String url;
	bool hideAppBar;

	HomeModelExampleGridnavTravelItem3({this.title, this.url, this.hideAppBar});

	HomeModelExampleGridnavTravelItem3.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}
