import 'package:flutter/material.dart';

class ServiceGrid extends StatelessWidget {
  const ServiceGrid({super.key});

  final List<Map<String, dynamic>> services = const [
    {'name': 'Home Maintenance', 'icon': Icons.build_circle_outlined},
    {'name': 'Build and Renovate', 'icon': Icons.home_work_outlined},
    {'name': 'Design Inspiration', 'icon': Icons.brush_outlined},
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),

        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: services.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.85,
          ),
          itemBuilder: (context, index) {
            return _buildServiceItem(
              services[index]['name'] as String,
              services[index]['icon'] as IconData,
            );
          },
        ),
      ),
    );
  }

  Widget _buildServiceItem(String name, IconData icon) {
    const Color tukangYellow = Color(0xFFFFC300);

    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: tukangYellow,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, size: 30, color: Colors.black),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
