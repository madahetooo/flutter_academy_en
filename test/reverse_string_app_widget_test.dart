import 'package:flutter/material.dart';
import 'package:flutter_academy_en/reverse_string_app/reverse_string_app.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/reverse_string_app/reverse_string_app.dart';

void main(){

  testWidgets('Reverse String widget test', (WidgetTester widgetTester)async {

    await widgetTester.pumpWidget(ReverseStringApp());

    var textField = find.byType(TextField); // find this text field
    expect(textField, findsOneWidget);

    await widgetTester.enterText(textField, 'Hello');
    expect(find.text('Hello'), findsOneWidget);

    var button = find.text('Reverse');
    expect(button, findsOneWidget);

    await widgetTester.tap(button);
    await widgetTester.pump();

    expect(find.text('olleH'), findsOneWidget);

  });
}