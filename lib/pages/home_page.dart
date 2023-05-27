import 'package:flutter/material.dart';
import 'package:qr_reader/pages/pages.dart';
import 'package:qr_reader/widgets/widgets.dart';

class HomePage extends StatelessWidget {
   
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Historial'),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.delete_forever)
          )
        ]
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
   
  const _HomePageBody({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final currentIndex = 1;

    switch(currentIndex) {
      case 0:
        return MapasPage();
      case 1:
        return DireccionesPage();
      default:
        return MapaPage();
    }
  }
}