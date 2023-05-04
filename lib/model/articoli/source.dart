class Source {
  String? id;
  String? name;

  Source({this.id, this.name});

//funzione factory per recuparare i dati per mapparli da oggetto Map a Json
  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id: json['id'],
      name: json['name'],
    );
  }
}