import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gweiland/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gweiland/widgets/home/bloc/cryptocurrency_listings_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const GweilandApp());
}

class GweilandApp extends StatelessWidget {
  const GweilandApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CryptocurrencyListingsBloc>(
          create: (context) => CryptocurrencyListingsBloc(),
        ),
        // Add more BlocProviders for other BLoCs as needed
      ],
      child: MaterialApp(
        home: const HomePage(),
        theme: ThemeData(textTheme: GoogleFonts.interTextTheme()),
      ),
    );
  }
}
