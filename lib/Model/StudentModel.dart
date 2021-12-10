import 'dart:convert';

StudentModel studentModelJson(String str)=> StudentModel.fromJson(json.decode(str));

String studentModel1Json(StudentModel data) => json.encode(data.toJson());

class StudentModel{
  int id;
  String first_name;
  String last_name;
  String classe;
  String domaine_sujet;
  String encadrant_societe;
  String encadrant_faculte;
  String sujet;
  String specialite;
  bool stage_valide;
  bool rapport_valide;
  bool rapport_signe;

  StudentModel({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.classe,
    required this.domaine_sujet,
    required this.encadrant_societe,
    required this.encadrant_faculte,
    required this.sujet,
    required this.specialite,
    required this.stage_valide,
    required this.rapport_valide,
    required this.rapport_signe,
  });

  factory StudentModel.fromJson(Map<String,dynamic> json)=> StudentModel(
      id : json["id"],
      first_name : json["first_name"],
      last_name : json["last_name"],
      classe : json["classe"],
      domaine_sujet : json["domaine_sujet"],
      encadrant_societe : json["encadrant_societe"],
      encadrant_faculte : json["encadrant_faculte"],
      sujet : json["sujet"],
      specialite : json["specialite"],
      stage_valide : json["stage_valide"],
      rapport_valide : json["rapport_valide"],
      rapport_signe : json["rapport_signe"]
  );

  Map<String,dynamic> toJson()=>{
    "id": id,
    "first_name": first_name,
    "last_name": last_name,
    "classe": classe,
    "domaine_sujet": domaine_sujet,
    "encadrant_societe": encadrant_societe,
    "encadrant_faculte": encadrant_faculte,
    "sujet": sujet,
    "specialite": specialite,
    "stage_valide": stage_valide,
    "rapport_valide": rapport_valide,
    "rapport_signe": rapport_signe
  };

  String get firstname => first_name;
  String get lastname => last_name;
  String get Classe => classe;
  String get domainesujet => domaine_sujet;
  String get encadrantsociete => encadrant_societe;
  String get encadrantfaculte => encadrant_faculte;
  String get Sujet => sujet;
  String get Specialite => specialite;
  bool get stagevalide => stage_valide;
  bool get rapportvalide => rapport_valide;
  bool get rapportsigne => rapport_signe;



}