import 'package:flutter/material.dart';
import 'package:week5/EXERCISE-2/model/profile_tile_model.dart';

ProfileData srornProfile = ProfileData(
    name: "Srun Srorn",
    position: "FullStack Developer",
    avatarUrl: 'assets/bert.jpg',
    tiles: [
      TileData(icon: Icons.phone, title: "Phone Number", value: "0975312419"),
      TileData(
          icon: Icons.location_on, title: "Address", value: "Takeo, Cambodia"),
      TileData(
          icon: Icons.email,
          title: "Mail",
          value: "srorn.srun@student.cadt.edu"),
      TileData(icon: Icons.facebook, title: "Facebook", value: "Srun Srorn"),
    ]);
