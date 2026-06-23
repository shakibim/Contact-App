import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final String name;
  final String phoneNumber;

  const ContactItem({
    super.key,
    required this.name,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFE5E5E5),
        border: Border.all(color: const Color(0xFFE5E5E5)),
      ),
      child: ListTile(
        leading: const Icon(
          Icons.person,
          size: 36,
          color: Color(0xff6d584d),
        ),
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.redAccent,
            fontSize: 18,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Text(
            phoneNumber,
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 16,
            ),
          ),
        ),
        trailing: const Icon(
          Icons.phone,
          color: Colors.blue,
          size: 30,
        ),
      ),
    );
  }
}