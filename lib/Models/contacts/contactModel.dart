// ignore_for_file: file_names, prefer_collection_literals, unnecessary_this

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
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['event_id'] = this.eventId;
    data['contact_type'] = this.contactType;
    data['contact_detail'] = this.contactDetail;
    data['is_main_contact'] = this.isMainContact;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
