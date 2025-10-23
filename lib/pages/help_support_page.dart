import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/secondary_heading_component.dart';
import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';

class HelpSupportPage extends StatefulWidget {
  const HelpSupportPage({Key? key}) : super(key: key);

  @override
  State<HelpSupportPage> createState() => _HelpSupportPageState();
}

class _HelpSupportPageState extends State<HelpSupportPage> {
  final TextEditingController _searchController = TextEditingController();

  final List<Map<String, dynamic>> _faqData = [
    {
      "category": "Hostel Management",
      "items": [
        {
          "question": "How do I list my hostel?",
          "answer":
          "Go to 'Add Hostel' in the app, fill in the details like name, address, and amenities, and submit for approval."
        },
        {
          "question": "Can I edit hostel details later?",
          "answer":
          "Yes, you can update hostel information anytime from the 'My Hostels' section."
        },
        {
          "question": "How do I manage room availability?",
          "answer":
          "Open the hostel details page, go to 'Manage Rooms', and update availability, pricing, or room types."
        },
      ]
    },
    {
      "category": "Bookings & Guests",
      "items": [
        {
          "question": "How do I confirm or reject a booking?",
          "answer":
          "In the 'Bookings' section, you can view requests and either confirm or reject them."
        },
        {
          "question": "What happens if a guest cancels?",
          "answer":
          "If a guest cancels, the cancellation policy you set will apply automatically."
        },
        {
          "question": "Can I view guest details before confirming?",
          "answer":
          "Yes, guest details are visible with each booking request before you approve."
        },
      ]
    },
    {
      "category": "Payments & Earnings",
      "items": [
        {
          "question": "How do I receive payments?",
          "answer":
          "Payments are credited directly to your registered bank account after successful bookings."
        },
        {
          "question": "Where can I check my earnings?",
          "answer":
          "Go to the 'Wallet/Earnings' section in the app to view your transactions and payouts."
        },
        {
          "question": "Are there any platform charges?",
          "answer":
          "A small service fee is deducted per booking. The details are available in the payments section."
        },
      ]
    },
    {
      "category": "Support & Policies",
      "items": [
        {
          "question": "How do I contact support?",
          "answer":
          "You can email us or use WhatsApp chat support from the Help & Support page."
        },
        {
          "question": "Can I set custom cancellation policies?",
          "answer":
          "Yes, while listing your hostel, you can choose the cancellation policy that best suits you."
        },
        {
          "question": "What if I face issues with payments?",
          "answer":
          "Contact our support team immediately with booking ID, and we’ll assist you."
        },
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            const SecondaryHeadingComponent(buttonTxt: "Help & Support"),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    // Search Bar
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: "Search FAQs",
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {}); // Refresh search results
                        },
                      ),
                    ),
                    // FAQ List
                    Expanded(
                      child: ListView.builder(
                        itemCount: _faqData.length,
                        itemBuilder: (context, index) {
                          final category = _faqData[index];
                          final items = category["items"] as List;

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Category Title
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8),
                                child: Text(
                                  category["category"],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              // Questions
                              ...items.map((item) {
                                // Search filter
                                if (_searchController.text.isNotEmpty &&
                                    !item["question"]
                                        .toLowerCase()
                                        .contains(_searchController.text
                                        .toLowerCase())) {
                                  return const SizedBox.shrink();
                                }

                                return ExpansionTile(
                                  title: Text(
                                    item["question"],
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        item["answer"],
                                        style: const TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                );
                              }).toList(),
                            ],
                          );
                        },
                      ),
                    ),

                    // Bottom Buttons
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {
                                openEmailSupport(
                                    email: "sastastaysupport@gmail.com");
                              },
                              child: const Text("Email Us"),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                openWhatsAppChat(phoneNumber: "9515486032");
                              },
                              child: Container(
                                height: 40,
                                decoration: AppStyles.primaryContainerStyle,
                                child: const Center(
                                  child: Text(
                                    "Chat With Us",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> openEmailSupport({
    required String email,
    String subject = '',
    String body = '',
  }) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      query: Uri.encodeFull(
        'subject=$subject&body=$body',
      ),
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch Email';
    }
  }

  /// Function to navigate to WhatsApp Chat
  Future<void> openWhatsAppChat({
    required String phoneNumber, // in international format without '+'
    String message = '',
  }) async {
    final Uri whatsappUri = Uri.parse(
      "https://wa.me/$phoneNumber?text=${Uri.encodeFull(message)}",
    );

    if (await canLaunchUrl(whatsappUri)) {
      await launchUrl(whatsappUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch WhatsApp';
    }
  }
}
