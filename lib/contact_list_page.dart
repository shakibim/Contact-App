import 'package:flutter/material.dart';
import 'contact_item.dart';

class ContactListPage extends StatelessWidget {
  const ContactListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),

      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Contact List",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [

            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Name",
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),

            const SizedBox(height: 10),

            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Phone Number",
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Add",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 25),

            Expanded(
              child: ListView(
                children: const [

                  ContactItem(
                    name: "Jawad",
                    phoneNumber: "01877-777777",
                  ),

                  ContactItem(
                    name: "Ferdous",
                    phoneNumber: "01673-777777",
                  ),

                  ContactItem(
                    name: "Hasan",
                    phoneNumber: "01745-777777",
                  ),

                  ContactItem(
                    name: "Hasan",
                    phoneNumber: "01745-777777",
                  ),

                  ContactItem(
                    name: "Hasan",
                    phoneNumber: "01745-777777",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}