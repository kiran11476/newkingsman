// To parse this JSON data, do
//
//     final categoryShoesModel = categoryShoesModelFromJson(jsonString);

import 'dart:convert';

List<CategoryShoesModel> categoryShoesModelFromJson(String str) =>
    List<CategoryShoesModel>.from(
        json.decode(str).map((x) => CategoryShoesModel.fromJson(x)));

String categoryShoesModelToJson(List<CategoryShoesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryShoesModel {
  CategoryShoesModel({
    required this.id,
    required this.productName,
    required this.productDescription,
    required this.productCategory,
    required this.productPrice,
    required this.images,
  });

  String id;
  String productName;
  String productDescription;
  String productCategory;
  String productPrice;
  List<Image>? images;

  factory CategoryShoesModel.fromJson(Map<String, dynamic> json) =>
      CategoryShoesModel(
        id: json["_id"] == null ? null : json["_id"],
        productName: json["productName"] == null ? null : json["productName"],
        productDescription: json["productDescription"] == null
            ? null
            : json["productDescription"],
        productCategory:
            json["productCategory"] == null ? null : json["productCategory"],
        productPrice:
            json["productPrice"] == null ? null : json["productPrice"],
        images: json["images"] == null
            ? null
            : List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "productName": productName == null ? null : productName,
        "productDescription":
            productDescription == null ? null : productDescription,
        "productCategory": productCategory == null ? null : productCategory,
        "productPrice": productPrice == null ? null : productPrice,
        "images": images == null
            ? null
            : List<dynamic>.from(images!.map((x) => x.toJson())),
      };
}

class Image {
  Image({
    required this.filename,
  });

  String filename;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        filename: json["filename"] == null ? null : json["filename"],
      );

  Map<String, dynamic> toJson() => {
        "filename": filename == null ? null : filename,
      };
}
