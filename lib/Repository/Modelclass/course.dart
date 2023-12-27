class Course {
  Course({
      this.id,
      this.createdAt,
      this.updatedAt,
      this.name,
      this.description,
      this.courseCategoryId,
      this.metadata,
      this.courseMaterials,
      this.baseurl,});

  Course.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    name = json['name'];
    description = json['description'];
    courseCategoryId = json['courseCategoryId'];
    if (json['metadata'] != null) {
      metadata = [];
      json['metadata'].forEach((v) {
        metadata?.add(v);
      });
    }
    if (json['courseMaterials'] != null) {
      courseMaterials = [];
      json['courseMaterials'].forEach((v) {
        courseMaterials?.add(v);
      });
    }
    baseurl = json['baseurl'];
  }
  String? id;
  String? createdAt;
  String? updatedAt;
  String? name;
  String? description;
  dynamic courseCategoryId;
  List<dynamic>? metadata;
  List<dynamic>? courseMaterials;
  String? baseurl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['name'] = name;
    map['description'] = description;
    map['courseCategoryId'] = courseCategoryId;
    if (metadata != null) {
      map['metadata'] = metadata?.map((v) => v.toJson()).toList();
    }
    if (courseMaterials != null) {
      map['courseMaterials'] = courseMaterials?.map((v) => v.toJson()).toList();
    }
    map['baseurl'] = baseurl;
    return map;
  }
  static List<Course> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => Course.fromJson(value)).toList();
  }
}