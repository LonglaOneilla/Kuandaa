// ignore_for_file: prefer_collection_literals, unnecessary_this

class EventModel {
  int? id;
  String? name;
  int? eventCreatorId;
  String? appId;
  String? eventProfilImg;
  String? eventBudget;
  String? lieu;
  bool? isPrivate;
  int? cityId;
  int? categorieId;
  String? description;
  String? email;
  String? beginDate;
  String? endDate;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  EventModel(
      {this.id,
      this.name,
      this.eventCreatorId,
      this.appId,
      this.eventProfilImg,
      this.eventBudget,
      this.isPrivate,
      this.cityId,
      this.categorieId,
      this.description,
      this.lieu,
      this.email,
      this.beginDate,
      this.endDate,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  EventModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    eventCreatorId = json['event_creator_id'];
    appId = json['app_id'];
    eventProfilImg = json['event_profil_img'];
    eventBudget = json['event_budget'];
    isPrivate = json['IsPrivate'];
    cityId = json['city_id'];
    categorieId = json['categorie_id'];
    description = json['description'];
    email = json['Email'];
    lieu = json['lieu'];
    beginDate = json['begin_date'];
    endDate = json['end_date'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['event_creator_id'] = this.eventCreatorId;
    data['app_id'] = this.appId;
    data['event_profil_img'] = this.eventProfilImg;
    data['event_budget'] = this.eventBudget;
    data['IsPrivate'] = this.isPrivate;
    data['city_id'] = this.cityId;
    data['categorie_id'] = this.categorieId;
    data['description'] = this.description;
    data['Email'] = this.email;
    data['lieu'] = this.lieu;
    data['begin_date'] = this.beginDate;
    data['end_date'] = this.endDate;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
