import 'package:flutter/material.dart';
import 'package:goodgo/pages/Dashboard.dart';
import 'package:goodgo/pages/screen/registrazione.dart';
import 'package:goodgo/pages/screen/badges_screen.dart';
import 'package:goodgo/pages/screen/bici_screen.dart';
import 'package:goodgo/pages/screen/tracce_screen.dart';
import 'package:goodgo/widgets/drawer/widgt_drawerItem.dart';


///Classe che crea un Drawer customizzato
///
///
///

class Nav_drawer extends StatelessWidget {
  const Nav_drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 34, 35, 34)
                    .withOpacity(0.2), // Colore superiore (più chiaro)
                const Color.fromARGB(255, 1, 26, 2)
                    .withOpacity(0.8), // Colore inferiore (più scuro)
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(24.0, 80, 24, 0),
            child: Column(
              children: [
                _headerWidget2(),

                DRw_item(
                    nome: 'Home',
                    icon: Icons.people,
                    onPressed: () => onItemPressed(context, index: 0)),
                const SizedBox(height: 10),
                DRw_item(
                    nome: 'Registra',
                    icon: Icons.play_arrow,
                    onPressed: () => onItemPressed(context, index: 1)),
                const SizedBox(height: 10),
                //Divider(thickness: 1, height: 10, color: Colors.grey),
                DRw_item(
                    nome: 'Statistiche',
                    icon: Icons.auto_graph_outlined,
                    onPressed: () => onItemPressed(context, index: 2)),
                // Divider(thickness: 1, height: 10, color: Colors.grey),
                const SizedBox(height: 10),
                DRw_item(
                    nome: 'Bici',
                    icon: Icons.electric_bike,
                    onPressed: () => onItemPressed(context, index: 3)),
                const SizedBox(height: 10),
                Divider(thickness: 1, height: 10, color: Colors.grey),
                const SizedBox(height: 10),
                DRw_item(
                    nome: 'Badges',
                    icon: Icons.card_giftcard,
                    onPressed: () => onItemPressed(context, index: 4)),
                const SizedBox(height: 10),
                DRw_item(
                    nome: 'Profilo',
                    icon: Icons.person,
                    onPressed: () => onItemPressed(context, index: 5)),
                const SizedBox(height: 10),
                DRw_item(
                    nome: 'About',
                    icon: Icons.logout,
                    onPressed: () => onItemPressed(context, index: 6)),
                const SizedBox(height: 10),
                Divider(thickness: 1, height: 10, color: Colors.grey),
                DRw_item(
                    nome: 'Disconnetti',
                    icon: Icons.logout,
                    onPressed: () => onItemPressed(context, index: 7)),
                const SizedBox(height: 10),
                // Divider(thickness: 1, height: 10, color: Colors.grey),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    //inserire gli altri link
    Navigator.pop((context));
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => Dashboard())));
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => AvvioRegistrazione())));

        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => TracceScreen())));

        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => BiciScreen())));

        break;
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => BadgeScreen())));

        break;
      case 5:
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => Dashboard())));

        break;
      case 6:
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => Dashboard())));

        break;
      case 7:
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => Dashboard())));

        break;
      default:
        Navigator.pop(context);
    }
  }

  Widget _headerWidget() {
    return const Row(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('android/app/src/zona/assets/logo.png'),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Person name',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            Text(
              'Person@email.com',
              style: TextStyle(fontSize: 14, color: Colors.white),
            )
          ],
        )
      ],
    );
  }

  Widget _headerWidget2() {
    return UserAccountsDrawerHeader(
      accountName: const Text(
        'Person name',
        style: TextStyle(fontSize: 14, color: Colors.white),
      ),
      accountEmail: const Text(
        'Person@email.com',
        style: TextStyle(fontSize: 14, color: Colors.white),
      ),
      currentAccountPicture: CircleAvatar(
        child: ClipOval(
          child: Image.asset(
            'android/app/src/zona/assets/logo.png',
            width: 90,
            height: 90,
            fit: BoxFit.cover,
          ),
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.amber,
          image: const DecorationImage(
              image: AssetImage('android/app/src/zona/assets/background.jpg'),
              fit: BoxFit.cover)),
    );
  }
}
