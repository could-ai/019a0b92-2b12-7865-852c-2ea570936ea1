import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  // Mock data for diving sites
  final List<Map<String, dynamic>> _divingSites = [
    {
      'name': 'Great Barrier Reef',
      'location': 'Australia',
      'depth': '5-40m',
      'rating': 5.0,
      'description': 'World-famous coral reef system',
    },
    {
      'name': 'Maui Molokini',
      'location': 'Hawaii, USA',
      'depth': '3-60m',
      'rating': 4.8,
      'description': 'Crystal clear waters with abundant marine life',
    },
    {
      'name': 'Belize Barrier Reef',
      'location': 'Belize',
      'depth': '6-40m',
      'rating': 4.7,
      'description': 'Second largest barrier reef system',
    },
  ];

  // Mock data for events
  final List<Map<String, dynamic>> _events = [
    {
      'title': 'Monthly Dive Meeting',
      'date': DateTime(2024, 12, 15),
      'location': 'Club House',
      'description': 'Monthly club meeting and dive planning',
    },
    {
      'title': 'Advanced Diving Course',
      'date': DateTime(2024, 12, 20),
      'location': 'Local Dive Shop',
      'description': 'PADI Advanced Open Water course',
    },
  ];

  // Mock data for photos
  final List<Map<String, dynamic>> _photos = [
    {
      'url': 'https://via.placeholder.com/400x300/4A90E2/FFFFFF?text=Dive+Photo+1',
      'caption': 'Beautiful coral formation',
      'uploader': 'John Diver',
      'date': DateTime(2024, 11, 30),
    },
    {
      'url': 'https://via.placeholder.com/400x300/50C878/FFFFFF?text=Dive+Photo+2',
      'caption': 'Turtle encounter',
      'uploader': 'Sarah Diver',
      'date': DateTime(2024, 11, 28),
    },
  ];

  List<Map<String, dynamic>> get divingSites => _divingSites;
  List<Map<String, dynamic>> get events => _events;
  List<Map<String, dynamic>> get photos => _photos;

  void addPhoto(Map<String, dynamic> photo) {
    _photos.add(photo);
    notifyListeners();
  }

  void addEvent(Map<String, dynamic> event) {
    _events.add(event);
    notifyListeners();
  }
}