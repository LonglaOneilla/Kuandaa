import 'package:kuandaa/Models/events/event_model.dart';

import 'package:kuandaa/Models/user/userModel.dart';

class EventProfile extends EventModel {
  String? eventCreator;
  String? city;
  String? category;
  int? phone1;
  int? phone2;

  EventProfile({
    this.phone1,
    this.phone2,
    this.eventCreator,
    this.city,
    this.category,
    int? id,
    String? name,
    int? eventCreatorId,
    String? appId,
    String? eventProfilImg,
    String? eventBudget,
    String? lieu,
    bool? isPrivate,
    int? cityId,
    int? categorieId,
    String? description,
    String? email,
    String? beginDate,
    String? endDate,
    String? deletedAt,
    String? createdAt,
    String? updatedAt,
  }) : super(
          name: name,
          eventBudget: eventBudget,
          eventCreatorId: eventCreatorId,
          eventProfilImg: eventProfilImg,
          appId: appId,
          lieu: lieu,
          id: id,
          isPrivate: isPrivate,
          cityId: cityId,
          categorieId: categorieId,
          description: description,
          email: email,
          beginDate: beginDate,
          endDate: endDate,
          deletedAt: deletedAt,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
}

class EventPreferences {
  static List<EventProfile> myEvents = [
    EventProfile(
        id: 1,
        name: 'MTN Zik',
        eventCreator: 'MTN CAM',
        lieu: 'Grand Mall',
        eventProfilImg: 'assets/images/mtn-zig1.jpeg',
        eventBudget: '10,000,000FCFA',
        city: 'Douala',
        category: 'Entertainment',
        isPrivate: false,
        email: 'mtn-zik@gmail.com',
        description:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.',
        createdAt: '12 September 2022',
        beginDate: '22 November 2022',
        endDate: '22 December 2022',
        phone1: 23782553499,
        phone2: 237699450000),
    EventProfile(
        id: 1,
        name: 'CA After Party',
        eventCreator: 'University of Douala',
        lieu: 'Grand Mall',
        eventProfilImg: 'assets/images/party.jpg',
        eventBudget: '10,000,000FCFA',
        city: 'Douala',
        category: 'Entertainment',
        isPrivate: false,
        email: 'mtn-zik@gmail.com',
        description:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.',
        createdAt: '12 September 2022',
        beginDate: '22 November 2022',
        endDate: '22 December 2022',
        phone1: 23782553499,
        phone2: 237699450000),
    EventProfile(
        id: 1,
        name: 'Christmas Party',
        eventCreator: 'YUP Agency',
        lieu: 'Grand Mall',
        eventProfilImg: 'assets/images/yupevent.jpg',
        eventBudget: '10,000,000FCFA',
        city: 'Douala',
        category: 'Entertainment',
        isPrivate: false,
        email: 'mtn-zik@gmail.com',
        description:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.',
        createdAt: '12 September 2022',
        beginDate: '22 November 2022',
        endDate: '22 December 2022',
        phone1: 23782553499,
        phone2: 237699450000),
  ];
}
