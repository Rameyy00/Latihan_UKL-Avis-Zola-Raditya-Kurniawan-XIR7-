import 'package:flutter/material.dart';

const Color tukangYellow = Color(0xFFFFC300); 

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  final List<Map<String, String>> dummyOrders = const [
    {
      'title': 'didit tekhnik',
      'date_time': '20/04/2023 06:29',
      'order_id': '5758 tekhnik',
      'status': 'Menunggu Konfirmasi',
      'partner': 'Partner Resmi',
    },
    {
      'title': 'Danish Jaya Teknik',
      'date_time': '20/04/2023 06:29',
      'order_id': 'Danish Jaya Teknik',
      'status': 'Menunggu Konfirmasi',
      'partner': 'Partner Resmi',
    },
    {
      'title': 'Free Kuota',
      'date_time': '20/04/2023 06:25',
      'order_id': 'Order ID 1234',
      'status': 'Menunggu Konfirmasi',
      'partner': 'Partner Resmi',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pesanan Dalam Proses',
          style: TextStyle(color: Colors.black, fontSize: 16.0),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.list, color: Colors.black),
          ),
        ],
      ),
      
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 8.0),
        itemCount: dummyOrders.length,
        itemBuilder: (context, index) {
          final order = dummyOrders[index];
          return _buildOrderItem(order);
        },
      ),
    );
  }

  Widget _buildOrderItem(Map<String, String> order) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: order['title'] == 'didit tekhnik' 
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.engineering, size: 25, color: Colors.blue),
                      )
                    : const SizedBox(), 
              ),
              const SizedBox(width: 12),
              
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      order['title']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      order['date_time']!,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      order['order_id']!,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.blueGrey,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      order['status']!,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFF9800),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 1, color: Color(0xFFF0F0F0), thickness: 1, indent: 16, endIndent: 16),
      ],
    );
  }
}