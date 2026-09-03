import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Magazine',
      debugShowCheckedModeBanner: false,
      home: pageAccueil(),
    );
  }
}

class pageAccueil extends StatelessWidget {
  const pageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE91E63),

        title: const Text(
          'Magazine Infos',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: const Column(
        children: [
          Image(image: AssetImage('assets/images/magazineInfo.jfif')),
          PartieTitre(),
          PartieTexte(),
          PartieIcone(),
          PartieRubrique(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Tu as cliqué dessus');
        },
        child: const Text('Click'),
      ),
    );
  }
}

class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bienvenue au Magazine Infos',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text('Votre magazine numérique', style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const Text(
        'Magazine Infos est un magazine numérique qui vous propose '
        'des informations, des actualités et différents contenus '
        'pour vous informer et vous divertir.',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.phone, color: Colors.pink),
              SizedBox(height: 5),
              Text('TEL', style: TextStyle(color: Colors.pink)),
            ],
          ),

          Column(
            children: [
              Icon(Icons.email, color: Colors.pink),
              SizedBox(height: 5),
              Text('MAIL', style: TextStyle(color: Colors.pink)),
            ],
          ),

          Column(
            children: [
              Icon(Icons.share, color: Colors.pink),
              SizedBox(height: 5),
              Text('PARTAGE', style: TextStyle(color: Colors.pink)),
            ],
          ),
        ],
      ),
    );
  }
}

class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/presse.jfif',
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/mode.jfif', fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
