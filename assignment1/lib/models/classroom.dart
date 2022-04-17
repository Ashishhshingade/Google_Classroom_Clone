
import 'package:flutter/material.dart';

class ClassRooms {
  String className;
  String description;
  String creator;
  Color uiColor=Colors.white;
  List<double> clrs = [];

  ClassRooms(
      {required this.className,
        required this.description,
        required this.creator,
        required this.clrs});
}

List<ClassRooms> classRoomList = [
  ClassRooms(
    className: "Bsc.cs Java",
    description: "second year",
    creator: "Sasikala selvaraj",

    clrs: [255, 233, 116, 57],
  ),
  ClassRooms(
    className: "Bsc.cs Data structure ",
    description: "second year",
    creator: "Michael raj",

    clrs: [255, 101, 237, 153],
  ),
  ClassRooms(
    className: "Bsc.cs Software project management",
    description: "second year",
    creator: "Archana",

    clrs: [255, 111, 27, 198],
  ),
  ClassRooms(
      className: "Bsc.cs C++",
      description: "first year",
      creator: "Anusree",

      clrs: [255, 0, 0, 0]),
  ClassRooms(
      className: "Bsc.cs Digital fundamental",
      description: "first year",
      creator: "Archana",

      clrs: [255, 102, 153, 204]),
  ClassRooms(
    className: "Photography",
    description: "first year",
    creator: "Photographer",

    clrs: [255, 111, 27, 198],
  ),
  ClassRooms(
    className: "Literature",
    description: "first year",
    creator: "Library",
    clrs: [255, 95, 139, 233],
  ),
  ClassRooms(
    className: "Music",
    description: "second year",
    creator: "violin",
    clrs: [255, 95, 139, 233],
  ),
  ClassRooms(
    className: "Bsc.cs Data structure ",
    description: "second year",
    creator: "Michael raj",
    clrs: [255, 101, 237, 153],
  ),
  ClassRooms(
      className: "Bsc.cs Software project management",
      description: "second year",
      creator: "Archana",
      clrs: [255, 102, 153, 204]),
  ClassRooms(
    className: "Bsc.cs C++",
    description: "first year",
    creator: "Anusree",
    clrs: [255, 95, 139, 233],
  ),
  ClassRooms(
      className: "Bsc.cs Digital fundamental",
      description: "first year",
      creator: "Archana",
      clrs: [255, 102, 153, 204]),
];