class Song {
  int? id;
  String? createdAt;
  String? sougTitle;
  String? songPath;
  int? artistId;
  int? albumId;
  String? duration;
  String? cover;
  String? categoryID;

  Song(
      {this.id,
      this.createdAt,
      this.sougTitle,
      this.songPath,
      this.artistId,
      this.albumId,
      this.categoryID,
      this.cover,
      this.duration});

  Song.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    sougTitle = json['soug_title'];
    songPath = json['song_path'];
    artistId = json['artist_id'];
    albumId = json['album_id'];
    categoryID = json['category_id'];
    cover = json['cover'];
    duration = json['duration'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['created_at'] = this.createdAt;
  //   data['soug_title'] = this.sougTitle;
  //   data['song_path'] = this.songPath;
  //   data['artist_id'] = this.artistId;
  //   data['test'] = this.test;
  //   return data;
  // }
}
