import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

<<<<<<< HEAD
import 'bloc/keranjang_bloc.dart';
import 'pages/halaman_keranjang.dart';
import 'pages/halaman_produk.dart';
=======
import 'cubit/keranjang_cubit.dart';
import 'page/halaman_keranjang.dart';
import 'page/halaman_produk.dart';
>>>>>>> 5aed83f92c1f271b0247cab7ebf35277ed418b99

void main() {
  runApp(
    BlocProvider(
<<<<<<< HEAD
      create: (context) => KeranjangBloc(),
=======
      create: (context) => KeranjangCubit(),
>>>>>>> 5aed83f92c1f271b0247cab7ebf35277ed418b99
      child: const AplikasiKantin(),
    ),
  );
}

class AplikasiKantin extends StatelessWidget {
  const AplikasiKantin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      title: 'Kantin Kampus (BLoC)',
=======
      title: 'Kantin Kampus (Cubit)',
>>>>>>> 5aed83f92c1f271b0247cab7ebf35277ed418b99
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const KerangkaUtama(),
    );
  }
}

class KerangkaUtama extends StatefulWidget {
  const KerangkaUtama({super.key});

  @override
  State<KerangkaUtama> createState() => _KerangkaUtamaState();
}

class _KerangkaUtamaState extends State<KerangkaUtama> {
  int _indeks = 0;

  static const _halaman = [
    HalamanProduk(),
    HalamanKeranjang(),
  ];

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    final totalItem = context.select<KeranjangBloc, int>(
      (bloc) => bloc.state.items.fold(
=======
    final totalItem = context.select<KeranjangCubit, int>(
      (cubit) => cubit.state.fold(
>>>>>>> 5aed83f92c1f271b0247cab7ebf35277ed418b99
        0,
        (total, item) => total + item.jumlah,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _indeks == 0 ? 'Menu Kantin' : 'Keranjang ($totalItem)',
        ),
      ),
      body: IndexedStack(
        index: _indeks,
        children: _halaman,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _indeks,
        onDestinationSelected: (nilaiBaru) {
          setState(() {
            _indeks = nilaiBaru;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.restaurant_menu),
            label: 'Produk',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            selectedIcon: Icon(Icons.shopping_cart),
            label: 'Keranjang',
          ),
        ],
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 5aed83f92c1f271b0247cab7ebf35277ed418b99
