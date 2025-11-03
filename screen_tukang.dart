import 'package:flutter/material.dart';
import 'akun_tukang.dart'; 
import 'dashboard_tukang.dart'; 
import 'order_tukang.dart'; 

const Color tukangYellow = Color(0xFFFFC300); 

class MainScreenTukang extends StatefulWidget {
  const MainScreenTukang({super.key});

  @override
  State<MainScreenTukang> createState() => _MainScreenTukangState();
}

class _MainScreenTukangState extends State<MainScreenTukang> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const DashboardScreen(), 
    const OrderScreen(), 
    const Center(child: Text('Halaman Bantuan')), 
    const AccountScreen(), 
  ];

  final List<Map<String, dynamic>> _navItems = const [
    {'icon': Icons.home_outlined, 'label': 'Beranda', 'activeIcon': Icons.home},
    {'icon': Icons.folder_outlined, 'label': 'Pesanan', 'activeIcon': Icons.folder},
    {'icon': Icons.chat_bubble_outline, 'label': 'Bantuan', 'activeIcon': Icons.chat_bubble},
    {'icon': Icons.person_outline, 'label': 'Akun', 'activeIcon': Icons.person},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildNavIcon(int index, bool isActive) {
    IconData icon = _navItems[index]['icon'] as IconData;
    IconData activeIcon = _navItems[index]['activeIcon'] as IconData;

    if (isActive) {
      return Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Icon(
          activeIcon,
          color: tukangYellow,
          size: 24,
        ),
      );
    } else {
      return Icon(
        icon,
        color: Colors.grey,
        size: 24,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        items: List.generate(_navItems.length, (index) {
          bool isActive = index == _selectedIndex;
          String label = _navItems[index]['label'] as String;
          
          return BottomNavigationBarItem(
            icon: _buildNavIcon(index, isActive),
            activeIcon: _buildNavIcon(index, isActive),
            label: label,
          );
        }),
        
        currentIndex: _selectedIndex,
        selectedItemColor: tukangYellow, 
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
        backgroundColor: Colors.white,
        elevation: 8,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}