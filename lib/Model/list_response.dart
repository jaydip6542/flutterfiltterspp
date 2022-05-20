// To parse this JSON data, do
//
//     final listDataResponse = listDataResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<ListDataResponse> listDataResponseFromJson(String str) => List<ListDataResponse>.from(json.decode(str).map((x) => ListDataResponse.fromJson(x)));

String listDataResponseToJson(List<ListDataResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ListDataResponse {
  ListDataResponse({
    required this.name,
    required this.alternateNames,
    required this.species,
    required this.gender,
    required this.house,
    required this.dateOfBirth,
    required this.yearOfBirth,
    required this.wizard,
    required this.ancestry,
    required this.eyeColour,
    required this.hairColour,
    required this.wand,
    required this.patronus,
    required this.hogwartsStudent,
    required this.hogwartsStaff,
    required this.actor,
    required this.alternateActors,
    required this.alive,
    required this.image,
  });

  dynamic name;
  dynamic alternateNames;
  dynamic species;
  dynamic gender;
  dynamic house;
  dynamic dateOfBirth;
  dynamic yearOfBirth;
  dynamic wizard;
  dynamic ancestry;
  dynamic eyeColour;
  dynamic hairColour;
  Wand wand;
  dynamic patronus;
  dynamic hogwartsStudent;
  dynamic hogwartsStaff;
  dynamic actor;
  dynamic alternateActors;
  dynamic alive;
  dynamic image;

  factory ListDataResponse.fromJson(Map<String, dynamic> json) => ListDataResponse(
    name: json["name"] == null ? null : json["name"],
    alternateNames: json["alternate_names"] == null ? null : List<String>.from(json["alternate_names"].map((x) => x)),
    species: json["species"] == null ? null : json["species"],
    gender: json["gender"] == null ? null : json["gender"],
    house: json["house"] == null ? null : json["house"],
    dateOfBirth: json["dateOfBirth"] == null ? null : json["dateOfBirth"],
    yearOfBirth: json["yearOfBirth"],
    wizard: json["wizard"] == null ? null : json["wizard"],
    ancestry: json["ancestry"] == null ? null : json["ancestry"],
    eyeColour: json["eyeColour"] == null ? null : json["eyeColour"],
    hairColour: json["hairColour"] == null ? null : json["hairColour"],
    wand:  Wand.fromJson(json["wand"]),
    patronus: json["patronus"] == null ? null : json["patronus"],
    hogwartsStudent: json["hogwartsStudent"] == null ? null : json["hogwartsStudent"],
    hogwartsStaff: json["hogwartsStaff"] == null ? null : json["hogwartsStaff"],
    actor: json["actor"] == null ? null : json["actor"],
    alternateActors: json["alternate_actors"] == null ? null : List<String>.from(json["alternate_actors"].map((x) => x)),
    alive: json["alive"] == null ? null : json["alive"],
    image: json["image"] == null ? null : json["image"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "alternate_names": alternateNames == null ? null : List<dynamic>.from(alternateNames.map((x) => x)),
    "species": species == null ? null : species,
    "gender": gender == null ? null : gender,
    "house": house == null ? null : house,
    "dateOfBirth": dateOfBirth == null ? null : dateOfBirth,
    "yearOfBirth":yearOfBirth == null ? null : yearOfBirth,
    "wizard": wizard == null ? null : wizard,
    "ancestry": ancestry == null ? null : ancestry,
    "eyeColour": eyeColour == null ? null : eyeColour,
    "hairColour": hairColour == null ? null : hairColour,
    "wand": wand == null ? null : wand.toJson(),
    "patronus": patronus == null ? null : patronus,
    "hogwartsStudent": hogwartsStudent == null ? null : hogwartsStudent,
    "hogwartsStaff": hogwartsStaff == null ? null : hogwartsStaff,
    "actor": actor == null ? null : actor,
    "alternate_actors": alternateActors == null ? null : List<dynamic>.from(alternateActors.map((x) => x)),
    "alive": alive == null ? null : alive,
    "image": image == null ? null : image,
  };
}


class Wand {
  Wand({
    required this.wood,
    required this.core,
    required this.length,
  });

  dynamic wood;
  dynamic core;
  dynamic length;

  factory Wand.fromJson(Map<String, dynamic> json) => Wand(
    wood: json["wood"] == null ? null : json["wood"],
    core: json["core"] == null ? null : json["core"],
    length:json["length"] == null ? null : json["length"],
  );

  Map<String, dynamic> toJson() => {
    "wood": wood == null ? null : wood,
    "core": core == null ? null : core,
    "length": length == null ? null : length,
  };
}



