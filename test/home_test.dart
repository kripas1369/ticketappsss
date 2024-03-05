import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ticketapp/features/home_page/data/homeModel.dart';
import 'package:ticketapp/features/home_page/domain/service.dart';
import 'package:mockito/mockito.dart';
import 'package:ticketapp/features/home_page/presentation/view/homeview.dart';

// Mock MovieService
class MockMovieService extends Mock implements MovieService {}

void main() {
  late MockMovieService mockMovieService;

  setUp(() {
    mockMovieService = MockMovieService();
  });

  testWidgets('HomeViewPage displays CircularProgressIndicator when loading',
          (WidgetTester tester) async {
        // Stubbing the movie service response
        when(mockMovieService.getAllMovies()).thenAnswer((_) async => null);

        await tester.pumpWidget(MaterialApp(
          home: HomeViewPage(),
        ));

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
      });

  testWidgets('HomeViewPage displays movies when loaded',
          (WidgetTester tester) async {
        // Stubbing the movie service response
        final movie = Movie(data: [
          Data(
            title: 'Test Movie',
            poster: 'https://example.com/poster.jpg',
            description: 'Test Description',
            genre: 'Test Genre',
            createdAt: 'Test Date',
            language: 'Test Language',
          )
        ]);
        when(mockMovieService.getAllMovies()).thenAnswer((_) async => movie);

        await tester.pumpWidget(MaterialApp(
          home: HomeViewPage(),
        ));

        await tester.pump(); // Wait for the response to reflect in the UI

        expect(find.text('Test Movie'), findsOneWidget);
        expect(find.byType(Image), findsOneWidget);
        expect(find.text('Test Description'), findsOneWidget);
        expect(find.text('Test Genre'), findsOneWidget);
        expect(find.text('Test Language'), findsWidgets);
      });
}
