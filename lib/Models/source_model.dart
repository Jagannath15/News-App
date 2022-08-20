class source{
  String? id;
  String? name;

  source({required this.id,required this.name});

  factory source.fromJson(Map<String,dynamic> json){
    return source(id: json['id'],name: json['name']);
  }
}