// ignore_for_file: file_names

class EventSummary {
  int? totalEvent;
  String? name;
  String? category;
  String? status;
  String? action;
  String? image;
  String? beginDate;
  String? endDate;
  String? email;
  String? eventCreator;
  String? city;
  String? location;

  EventSummary({
    this.action,
    this.category,
    this.name,
    this.status,
    this.totalEvent,
    this.image,
    this.beginDate,
    this.endDate,
    this.city,
    this.email,
    this.eventCreator,
    this.location,
  });

  factory EventSummary.fromJSON(Map<String, dynamic> json) {
    return EventSummary(
        name: json['name'],
        category: json['category'],
        status: json['status'],
        action: json['action'],
        totalEvent: json['totalEvent'],
        image: json['image'],
        beginDate: json['beginDate'],
        endDate: json['endDate']);
  }
}

class EventSummaryPreference {
  static List<EventSummary> mySummary = [
    EventSummary(
      name: 'Fair Conference',
      category: 'Conference',
      status: 'active',
      action: 'view details',
      image: 'assets/images/yupevent.jpg',
      beginDate: '22 November 2022',
      location: 'Grand Mall',
      endDate: '22 December 2022',email: 'mtn-zik@gmail.com',city: 'Douala',eventCreator: 'MTN CAM',
    ),
    EventSummary(
      name: 'CA after party',
      category: 'Party',
      status: 'active',
      action: 'view details',
      image: 'assets/images/party.jpg',
      beginDate: '22 November 2022',
      location: 'Grand Mall',
      endDate: '22 December 2022',email: 'mtn-zik@gmail.com',city: 'Douala', eventCreator: 'University of Douala',
    ),
    EventSummary(
      name: 'Megrave Party',
      category: 'Party',
      status: 'completed',
      action: 'view details',
      image: 'assets/images/time.jpg',
      beginDate: '22 November 2022',
      endDate: '22 December 2022',email: 'mtn-zik@gmail.com',city: 'Douala',eventCreator: 'MTN CAM',
      location: 'Hall of Fame',
    ),
  ];
}
