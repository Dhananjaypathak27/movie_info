/// id : 299536
/// results : [{"iso_639_1":"en","iso_3166_1":"US","name":"AVENGERS 3: Infinity War All Bonus Features & Bloopers (2018)","key":"_XkUdr0EDwk","site":"YouTube","size":1080,"type":"Featurette","official":false,"published_at":"2018-08-15T16:39:38.000Z","id":"5ca3823292514140cf499dc5"},{"iso_639_1":"en","iso_3166_1":"US","name":"\"Legacy\" TV Spot","key":"LXPaDL_oILs","published_at":"2018-04-12T16:00:01.000Z","site":"YouTube","size":1080,"type":"Teaser","official":true,"id":"5aea2ed2c3a3682bf7001205"},{"iso_639_1":"en","iso_3166_1":"US","name":"\"Family\" Featurette","key":"PbRmbhdHDDM","published_at":"2018-04-11T16:00:06.000Z","site":"YouTube","size":1080,"type":"Featurette","official":true,"id":"5aea2f3e92514172a7001672"},{"iso_639_1":"en","iso_3166_1":"US","name":"Official Trailer #2","key":"QwievZ1Tx-8","published_at":"2018-03-16T13:02:41.000Z","site":"YouTube","size":1080,"type":"Trailer","official":true,"id":"5aabd7e69251413feb011276"},{"iso_639_1":"en","iso_3166_1":"US","name":"Big Game Spot","key":"pVxOVlm_lE8","published_at":"2018-02-05T02:12:09.000Z","site":"YouTube","size":1080,"type":"Teaser","official":true,"id":"5a7833440e0a26597f010849"},{"iso_639_1":"en","iso_3166_1":"US","name":"Official Trailer","key":"6ZfuNTqbHE8","published_at":"2017-11-29T13:26:24.000Z","site":"YouTube","size":1080,"type":"Trailer","official":true,"id":"5a200baa925141033608f5f0"},{"iso_639_1":"en","iso_3166_1":"US","name":"Fans reaction Trailer Tease","key":"3VbHg5fqBYw","published_at":"2017-11-28T17:09:22.000Z","site":"YouTube","size":720,"type":"Teaser","official":true,"id":"5a200bdd0e0a264cca08d39f"},{"iso_639_1":"en","iso_3166_1":"US","name":"Action...Avengers: Infinity War","key":"sAOzrChqmd0","published_at":"2017-02-11T01:56:19.000Z","site":"YouTube","size":720,"type":"Clip","official":true,"id":"5a200bcc925141032408d21b"}]

class TrailerModel {
  int? _id;
  List<Results>? _results;

  int? get id => _id;
  List<Results>? get results => _results;

  TrailerModel({
      int? id, 
      List<Results>? results}){
    _id = id;
    _results = results;
}

  TrailerModel.fromJson(dynamic json) {
    _id = json["id"];
    if (json["results"] != null) {
      _results = [];
      json["results"].forEach((v) {
        _results?.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    if (_results != null) {
      map["results"] = _results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// iso_639_1 : "en"
/// iso_3166_1 : "US"
/// name : "AVENGERS 3: Infinity War All Bonus Features & Bloopers (2018)"
/// key : "_XkUdr0EDwk"
/// site : "YouTube"
/// size : 1080
/// type : "Featurette"
/// official : false
/// published_at : "2018-08-15T16:39:38.000Z"
/// id : "5ca3823292514140cf499dc5"

class Results {
  String? _iso6391;
  String? _iso31661;
  String? _name;
  String? _key;
  String? _site;
  int? _size;
  String? _type;
  bool? _official;
  String? _publishedAt;
  String? _id;

  String? get iso6391 => _iso6391;
  String? get iso31661 => _iso31661;
  String? get name => _name;
  String? get key => _key;
  String? get site => _site;
  int? get size => _size;
  String? get type => _type;
  bool? get official => _official;
  String? get publishedAt => _publishedAt;
  String? get id => _id;

  Results({
      String? iso6391, 
      String? iso31661, 
      String? name, 
      String? key, 
      String? site, 
      int? size, 
      String? type, 
      bool? official, 
      String? publishedAt, 
      String? id}){
    _iso6391 = iso6391;
    _iso31661 = iso31661;
    _name = name;
    _key = key;
    _site = site;
    _size = size;
    _type = type;
    _official = official;
    _publishedAt = publishedAt;
    _id = id;
}

  Results.fromJson(dynamic json) {
    _iso6391 = json["iso_639_1"];
    _iso31661 = json["iso_3166_1"];
    _name = json["name"];
    _key = json["key"];
    _site = json["site"];
    _size = json["size"];
    _type = json["type"];
    _official = json["official"];
    _publishedAt = json["published_at"];
    _id = json["id"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["iso_639_1"] = _iso6391;
    map["iso_3166_1"] = _iso31661;
    map["name"] = _name;
    map["key"] = _key;
    map["site"] = _site;
    map["size"] = _size;
    map["type"] = _type;
    map["official"] = _official;
    map["published_at"] = _publishedAt;
    map["id"] = _id;
    return map;
  }

}