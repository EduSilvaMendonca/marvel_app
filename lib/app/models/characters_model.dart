class CharactersModel {
  CharactersModel({
    required this.id,
    required this.name,
    required this.description,
    required this.thumbnail,
    required this.resourceURI,
    required this.comics,
  });
  late final int id;
  late final String name;
  late final String description;
  late final Thumbnail thumbnail;
  late final String resourceURI;
  late final Comics comics;

  CharactersModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    thumbnail = Thumbnail.fromJson(json['thumbnail']);
    resourceURI = json['resourceURI'];
    comics = Comics.fromJson(json['comics']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['description'] = description;
    _data['thumbnail'] = thumbnail.toJson();
    _data['resourceURI'] = resourceURI;
    _data['comics'] = comics.toJson();
    return _data;
  }
}

class Thumbnail {
  Thumbnail({
    required this.path,
    required this.extension,
  });
  late final String path;
  late final String extension;

  Thumbnail.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    extension = json['extension'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['path'] = path;
    _data['extension'] = extension;
    return _data;
  }
}

class Comics {
  Comics({
    required this.available,
    required this.collectionURI,
    required this.items,
    required this.returned,
  });
  late final int available;
  late final String collectionURI;
  late final List<Items> items;
  late final int returned;

  Comics.fromJson(Map<String, dynamic> json) {
    available = json['available'];
    collectionURI = json['collectionURI'];
    items = List.from(json['items']).map((e) => Items.fromJson(e)).toList();
    returned = json['returned'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['available'] = available;
    _data['collectionURI'] = collectionURI;
    _data['items'] = items.map((e) => e.toJson()).toList();
    _data['returned'] = returned;
    return _data;
  }
}

class Items {
  Items({
    required this.resourceURI,
    required this.name,
  });
  late final String resourceURI;
  late final String name;

  Items.fromJson(Map<String, dynamic> json) {
    resourceURI = json['resourceURI'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['resourceURI'] = resourceURI;
    _data['name'] = name;
    return _data;
  }
}
