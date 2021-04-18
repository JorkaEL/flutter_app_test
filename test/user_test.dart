// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_app_test/domain/entities/user.entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final User user = User(
      city: '',
      country: '',
      cell: '',
      postcode: '',
      picture: '',
      phone: '',
      lastName: '',
      firstName: '',
      thumbnail: '',
      gender: '',
      age: 0,
      nat: '',
      street: '',
      streetNumber: 0,
      state: '',
      dob: '',
      title: '',
      email: '');

  group('User Entity', () {
    test('Change title of User', () {
      final String value = 'Monsieur';

      user.title = value;

      expect(user.title, value);
    });

    test('Change lastName of User', () {
      final String value = 'Boutanquoy';

      user.lastName = value;

      expect(user.lastName, value);
    });

    test('Change firstName of User', () {
      final String value = 'Xavier';

      user.firstName = value;

      expect(user.firstName, value);
    });

    test('Change Age of User', () {
      final int newAge = 31;

      user.age = newAge;

      expect(user.age, newAge);
    });

    test('Change Email of User', () {
      final String value = 'xboutanquoy@gmail.com';

      user.email = value;

      expect(user.email, value);
    });

    test('Change Cell of User', () {
      final String value = '+33 6 50 43 65 66';

      user.cell = value;

      expect(user.cell, value);
    });

    test('Change City of User', () {
      final String value = 'Nantes';

      user.city = value;

      expect(user.city, value);
    });

    test('Change Postcode of User', () {
      final String value = '44300';

      user.postcode = value;

      expect(user.postcode, value);
    });

    test('Change Street of User', () {
      final String value = 'Boulevard Jules Verne';

      user.street = value;

      expect(user.street, value);
    });

    test('Change Street Number of User', () {
      final int value = 190;

      user.streetNumber = value;

      expect(user.streetNumber, value);
    });
  });
}
