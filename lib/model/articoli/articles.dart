// To parse this JSON data, do
//Quicktype.io
//     final articoli = articoliFromJson(jsonString);

import 'dart:convert';

Articoli articoliFromJson(String str) => Articoli.fromJson(json.decode(str));

String articoliToJson(Articoli data) => json.encode(data.toJson());

class Articoli {
    Articoli({
        required this.status,
        required this.totalResults,
        required this.articles,
    });

    String status;
    int totalResults;
    List<Article> articles;

    factory Articoli.fromJson(Map<String, dynamic> json) => Articoli(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
    };
}

class Article {
    Article({
        required this.source,
        required this.author,
        required this.title,
        required this.description,
        required this.url,
        required this.urlToImage,
        required this.publishedAt,
        required this.content,
    });

    Source source;
    String author;
    String title;
    String description;
    String url;
    String urlToImage;
    DateTime publishedAt;
    String content;

    factory Article.fromJson(Map<String, dynamic> json) => Article(
        source: Source.fromJson(json["source"]),
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"],
    );

    Map<String, dynamic> toJson() => {
        "source": source.toJson(),
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt.toIso8601String(),
        "content": content,
    };
}

class Source {
    Source({
        this.id,
        required this.name,
    });

    dynamic id;
    String name;

    factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}

/*
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:goodgo/model/articoli/source.dart';
import 'source.dart';
import 'dart:io';
import 'dart:convert';

class Article extends Equatable {
  Source source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });
//esempio per costruire la ui in homescreen poi verrano passati dei dati con una classe feed
  static List<Article> articles = [
    Article(
        source: Source(id: '1', name: 'test'),
        author: 'Ernesto',
        title: 'Pancake e more',
        description: 'la raccolta delle più importanti opere',
        url: "https://unsplash.com/@joshrh19",
        urlToImage:
            "https://www.ricetteregionali.net/images/ricette/calabria/antipasti-crostini-rossi-piccanti.jpg",
        content: "fgfdgsdfgsdfgjnsjkgertkjerjtkejw",
        publishedAt: DateTime.now().toString()),
    Article(
        source: Source(id: '2', name: 'test2'),
        author: 'Pablo',
        title: 'Pesto al posto del pasto',
        description: 'mangia che ti schianta',
        url: "https://unsplash.com/@joshrh19",
        urlToImage:
            "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        content: "fgfdgsdfgsdfgjnsjkgertkjerjtkejw",
        publishedAt: DateTime.now().toString())
  ];

  @override
  // TODO: implement props
  List<Object?> get props => [
        source,
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content,
      ];

  factory Article.fromJson(Map<String, dynamic> json) {
    var sorgente = Source.fromJson(json['source']);
    var autore = json['author'];
    var titolo = json['title'];
    var descrizione = json['description'];
    var link = json['url'];
    var linkimmagine = json['urlToImage'];
    var pubblicato = json['publishedAt'];
    var contenuto = json['content'];

    if (sorgente == null) {
      json['source'] = "nessun sorgente dati";
    }
    if (autore == null) {
      json['author'] = "nessun autore";
    }
    if (titolo == null) {
      json['title'] = "nessun titolo";
    }
    if (descrizione == null) {
      json['description'] = "nessuna descrizione";
    }
    if (linkimmagine == null) {
      json['urlToImage'] = "nessun link immagine";
    }
    if (pubblicato == null) {
      json['publishedAt'] = "nessuna data";
    }
    if (contenuto == null) {
      json['content'] = "nessun contenuto";
    }

    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] as String,
      publishedAt: json['publishedAt'] as String,
      content: json['content'] as String,
    );
  }
}
*/