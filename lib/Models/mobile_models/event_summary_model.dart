class EventSummary {
  int? totalEvent;
  String? name;
  String? category;
  String? status;
  String? action;

  EventSummary({
    this.action,
    this.category,
    this.name,
    this.status,
    this.totalEvent,
  });

  factory EventSummary.fromJSON(Map<String, dynamic> json) {
    return EventSummary(
      name: json['name'],
      category: json['category'],
      status: json['status'],
      action: json['action'],
      totalEvent: json['totalEvent']
    );
  }
}

class ServiceSummary {
  int? totalServices;
  String? name;
  String? category;
  String? status;
  String? action;

  ServiceSummary(
      {this.action, this.category, this.name, this.status, this.totalServices});

factory ServiceSummary.fromJSON(Map<String, dynamic> json) {
    return ServiceSummary(
      name: json['name'],
      category: json['category'],
      status: json['status'],
      action: json['action'],
      totalServices: json['totalServices']
    );
  }

}
