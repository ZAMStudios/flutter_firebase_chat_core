class InstituteReviewModel {
  InstituteReviewModel({
    required this.id,
    required this.rating,
    required this.review,
    this.createdDate,
    this.occupation,
    required this.fkId,
    required this.moduleType,
    this.subRating,
    required this.users,
    this.isAvailableForHelp = false,
    this.likes,
    this.likeId,
  });

  int id;
  double rating;
  String review;
  bool isAvailableForHelp;
  String? createdDate;
  String? occupation;
  int fkId;
  String moduleType;
  List<SubRating>? subRating;
  List<User>? users;
  List<Like>? likes;
  int? likeId;

  factory InstituteReviewModel.fromJson(Map<String, dynamic> json) =>
      InstituteReviewModel(
        id: json["id"] == null ? null : json["id"],
        rating: json["rating"] == null ? null : json["rating"],
        review: json["review"] == null ? null : json["review"],
        createdDate: json["createdDate"] == null ? null : json["createdDate"],
        occupation: json["occupation"] == null ? null : json["occupation"],
        fkId: json["fkId"] == null ? null : json["fkId"],
        moduleType: json["moduleType"] == null ? null : json["moduleType"],
        isAvailableForHelp: json['isAvailableForHelp'] == null
            ? false
            : json['isAvailableForHelp'],
        // subRating: json["subRating"] == null
        //     ? null
        //     : List<SubRating>.from(
        //         json["subRating"].map((x) => SubRating.fromJson(x))),
        // users: null,
        users: json["users"] == null
            ? null
            : List<User>.from(json["users"].map((x) => User.fromJson(x))),
        likes: json["likes"] == null
            ? null
            : List<Like>.from(json["likes"].map((x) => Like.fromJson(x))),
        likeId: json["likeId"] == null ? null : json["likeId"],
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "rating": rating,
    "review": review,
    "createdDate": createdDate == null ? null : createdDate,
    "occupation": occupation == null ? null : occupation,
    "fkId": fkId,
    "moduleType": moduleType,
    "subRating": subRating == null
        ? null
        : List<dynamic>.from(subRating!.map((x) => x.toJson())),
    "users": users == null
        ? null
        : List<dynamic>.from(users!.map((x) => x.toJson())),
    "likes": likes == null
        ? null
        : List<dynamic>.from(likes!.map((x) => x.toJson())),
    "likeId": likeId == null ? null : likeId,
  };
}

class Like {
  Like({
    required this.likeId,
    required this.reaction,
    required this.users,
  });

  int likeId;
  String reaction;
  Users? users;

  factory Like.fromJson(Map<String, dynamic> json) => Like(
    likeId: json["like_id"] == null ? null : json["like_id"],
    reaction: json["reaction"] == null ? null : json["reaction"],
    users: json["users"] == null ? null : Users.fromJson(json["users"]),
  );

  Map<String, dynamic> toJson() => {
    "like_id": likeId,
    "reaction": reaction,
    "users": users,
  };
}

class Users {
  Users({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.profilePicId,
  });

  int id;
  String firstName;
  String lastName;
  String profilePicId;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
    id: json["id"] == null ? null : json["id"],
    firstName: json["firstName"] == null ? null : json["firstName"],
    lastName: json["lastName"] == null ? null : json["lastName"],
    profilePicId:
    json["profilePicId"] == null ? null : json["profilePicId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "firstName": firstName,
    "lastName": lastName,
    "profilePicId": profilePicId,
  };
}

class SubRating {
  SubRating({
    required this.lab,
    required this.sports,
    required this.subRatingLibrary,
  });

  int lab;
  int sports;
  int subRatingLibrary;

  factory SubRating.fromJson(Map<String, dynamic> json) => SubRating(
    lab: json["lab"] == null ? null : json["lab"],
    sports: json["sports"] == null ? null : json["sports"],
    subRatingLibrary: json["library"] == null ? null : json["library"],
  );

  Map<String, dynamic> toJson() => {
    "lab": lab,
    "sports": sports,
    "library": subRatingLibrary,
  };
}

class User {
  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.profilePicId,
    required this.firebaseId,
    required this.isUserVerified,
  });

  int id;
  String firstName;
  String lastName;
  String profilePicId;
  String firebaseId;
  bool isUserVerified;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"] == null ? null : json["id"],
    firstName: json["firstName"] == null ? null : json["firstName"],
    lastName: json["lastName"] == null ? null : json["lastName"],
    profilePicId:
    json["profilePicId"] == null ? null : json["profilePicId"],
    firebaseId: json["firebaseId"] == null ? null : json["firebaseId"],
    isUserVerified:
    json["isUserVerified"] == null ? null : json["isUserVerified"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "firstName": firstName,
    "lastName": lastName,
    "profilePicId": profilePicId,
    "firebaseId": firebaseId,
    "isUserVerified": isUserVerified,
  };
}
