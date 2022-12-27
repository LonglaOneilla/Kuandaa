class EventsSummary {
  int? totalEvent;
  String? name;
  String? category;
  String? status;
  String? action;
  String? image;
  String? beginDate;
    String? endDate;

  EventsSummary({
    this.action,
    this.category,
    this.name,
    this.status,
    this.totalEvent,
    this.image,
    this.beginDate,
    this.endDate,
  });

  factory EventsSummary.fromJSON(Map<String, dynamic> json) {
    return EventsSummary(
      name: json['name'],
      category: json['category'],
      status: json['status'],
      action: json['action'],
      totalEvent: json['totalEvent'],
      image: json['image'],
      beginDate: json['beginDate'],
      endDate: json['endDate']
    );
  }
}

class ServiceSummary {
  int? totalServices;
  String? name;
  String? category;
  String? status;
  String? action;
  String? image;


  ServiceSummary(
      {this.action, this.category, this.name, this.status, this.totalServices,this.image});

factory ServiceSummary.fromJSON(Map<String, dynamic> json) {
    return ServiceSummary(
      name: json['name'],
      category: json['category'],
      status: json['status'],
      action: json['action'],
      totalServices: json['totalServices'],
      image: json['image']
    );
  }

}
