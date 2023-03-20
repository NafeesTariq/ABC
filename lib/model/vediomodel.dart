// {
//   "id":0,
//   "vedioUrl":"https://www.youtube.com/watch?v=BBAyRBTfsOU",
//   "watched":false
//       "points":89.6
// }
class VedioModel {
  VedioModel({
    required this.id,
    required this.vedioUrl,
    required this.watched,
    required this.points,
  });
  late final int id;
  late final String vedioUrl;
  late final bool watched;
  late final double points;

  VedioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vedioUrl = json['vedioUrl'];
    watched = json['watched'];
    points = json['points'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['vedioUrl'] = vedioUrl;
    _data['watched'] = watched;
    _data['points'] = points;
    return _data;
  }
}
