// ignore_for_file: prefer_collection_literals, unnecessary_this

class EventCurrencyModel {
  int? id;
  String? currencyId;
  int? eventId;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  EventCurrencyModel(
      {this.id,
      this.currencyId,
      this.eventId,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  EventCurrencyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    currencyId = json['currency_id'];
    eventId = json['event_id'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['currency_id'] = this.currencyId;
    data['event_id'] = this.eventId;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
