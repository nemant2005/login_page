import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF285B4B),
          surface: const Color(0xFFF6F7F3),
        ),
        scaffoldBackgroundColor: const Color(0xFFF6F7F3),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(22, 24, 22, 32),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  const Text(
                    'WELCOME BACK',
                    style: TextStyle(
                      color: Color(0xFF70766F),
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 7),
                  const Text(
                    'Good to see you.',
                    style: TextStyle(
                      color: Color(0xFF202923),
                      fontSize: 29,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    constraints: const BoxConstraints(minHeight: 210),
                    padding: const EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      color: const Color(0xFF285B4B),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: -34,
                          top: -46,
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: const BoxDecoration(
                              color: Color(0xFF3C705D),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'YOUR HOME BASE',
                              style: TextStyle(
                                color: Color(0xFFC8DCCF),
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.1,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'A little space\nfor what matters.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                height: 1.15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Your day, all in one place.',
                              style: TextStyle(
                                color: Color(0xFFD9E5DD),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const _SectionHeading(title: 'Quick access'),
                  const SizedBox(height: 14),
                  const Row(
                    children: [
                      Expanded(
                        child: _QuickAccessTile(
                          icon: Icons.explore_outlined,
                          label: 'Explore',
                          color: Color(0xFFEAF0E8),
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: _QuickAccessTile(
                          icon: Icons.bookmark_border_rounded,
                          label: 'Saved',
                          color: Color(0xFFF5EDE3),
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: _QuickAccessTile(
                          icon: Icons.person_outline_rounded,
                          label: 'Profile',
                          color: Color(0xFFEAEAF0),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const _SectionHeading(title: 'Make yourself at home'),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.waving_hand_outlined,
                          color: Color(0xFFC4774E),
                          size: 22,
                        ),
                        SizedBox(width: 13),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Start with the essentials',
                                style: TextStyle(
                                  color: Color(0xFF202923),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Personalize your space and preferences.',
                                style: TextStyle(
                                  color: Color(0xFF70766F),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xFF70766F),
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionHeading extends StatelessWidget {
  const _SectionHeading({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Color(0xFF202923),
        fontSize: 17,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class _QuickAccessTile extends StatelessWidget {
  const _QuickAccessTile({
    required this.icon,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: const Color(0xFF285B4B), size: 25),
          const SizedBox(height: 9),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFF202923),
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
