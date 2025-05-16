import 'package:flutter/material.dart';

void main() {
  runApp(FuturisticDashboardApp());
}

class FuturisticDashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futuristic Dashboard',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
      home: FuturisticDashboard(),
    );
  }
}

class FuturisticDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/1.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: MediaQuery.of(context).size.width / 2 - 60,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      border: Border.all(color: Colors.white24, width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/2.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Jarak antar gambar dan teks, dikurangi dari 80 ke 40
          SliverToBoxAdapter(
            child: SizedBox(height: 40),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.cyanAccent.withOpacity(0.3)),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'A.Wahyuni Nursakinah',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.cyanAccent,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Jangan Lupa Selalu Bahagia.',
                      style: TextStyle(color: Colors.grey[300]),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),

          SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                futuristicMenuTile('Profil', Icons.person),
                futuristicMenuTile('Akademik', Icons.school),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget futuristicMenuTile(String title, IconData icon) {
    return Card(
      color: Colors.white12,
      child: ListTile(
        leading: Icon(icon, color: Colors.tealAccent),
        title: Text(title, style: TextStyle(color: Colors.white)),
        trailing: Icon(Icons.arrow_forward_ios_rounded,
            color: Colors.tealAccent, size: 16),
        onTap: () {},
      ),
    );
  }
}
