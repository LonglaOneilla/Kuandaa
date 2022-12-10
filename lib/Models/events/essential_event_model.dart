// ignore_for_file: prefer_collection_literals

class EssentialEventModel {
  List<City>? city;
  List<Country>? country;
  List<Contact>? contact;
  List<Categorie>? categorie;

  EssentialEventModel({this.city, this.country, this.contact, this.categorie});

  EssentialEventModel.fromJson(Map<String, dynamic> json) {
    if (json['city'] != null) {
      city = <City>[];
      json['city'].forEach((v) {
        city!.add(City.fromJson(v));
      });
    }
    if (json['country'] != null) {
      country = <Country>[];
      json['country'].forEach((v) {
        country!.add(Country.fromJson(v));
      });
    }
    if (json['contact'] != null) {
      contact = <Contact>[];
      json['contact'].forEach((v) {
        contact!.add(Contact.fromJson(v));
      });
    }
    if (json['categorie'] != null) {
      categorie = <Categorie>[];
      json['categorie'].forEach((v) {
        categorie!.add(Categorie.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (city != null) {
      data['city'] = city!.map((v) => v.toJson()).toList();
    }
    if (country != null) {
      data['country'] = country!.map((v) => v.toJson()).toList();
    }
    if (contact != null) {
      data['contact'] = contact!.map((v) => v.toJson()).toList();
    }
    if (categorie != null) {
      data['categorie'] = categorie!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class City {
  int? id;
  int? countryId;
  String? name;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  City(
      {this.id,
      this.countryId,
      this.name,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryId = json['country_id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['country_id'] = countryId;
    data['name'] = name;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    return data;
  }
}

class Country {
  int? id;
  String? name;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  Country({this.id, this.name, this.createdAt, this.updatedAt, this.deletedAt});

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    return data;
  }
}

class Contact {
  int? id;
  int? userId;
  int? eventId;
  String? contactType;
  String? contactDetail;
  bool? isMainContact;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  Contact(
      {this.id,
      this.userId,
      this.eventId,
      this.contactType,
      this.contactDetail,
      this.isMainContact,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Contact.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    eventId = json['event_id'];
    contactType = json['contact_type'];
    contactDetail = json['contact_detail'];
    isMainContact = json['is_main_contact'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['user_id'] = userId;
    data['event_id'] = eventId;
    data['contact_type'] = contactType;
    data['contact_detail'] = contactDetail;
    data['is_main_contact'] = isMainContact;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    return data;
  }
}

class Categorie {
  int? id;
  String? name;
  String? parentId;
  String? description;
  bool? isPredefined;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  Categorie(
      {this.id,
      this.name,
      this.parentId,
      this.description,
      this.isPredefined,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Categorie.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    parentId = json['parent_id'];
    description = json['description'];
    isPredefined = json['is_predefined'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['parent_id'] = parentId;
    data['description'] = description;
    data['is_predefined'] = isPredefined;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    return data;
  }
}
