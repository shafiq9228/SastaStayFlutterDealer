import 'package:flutter/material.dart';
import '../components/secondary_heading_component.dart';
import '../utils/custom_colors.dart';

class DealerTermsAndConditionsPage extends StatelessWidget {
  const DealerTermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            SecondaryHeadingComponent(buttonTxt: "Terms & Conditions"),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: DealerTermsContent(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DealerTermsContent extends StatelessWidget {
  const DealerTermsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle('1. Dealer Agreement'),
        SectionContent(
            'By registering as a Dealer/Hostel Owner on the PG Hostel platform (the "Platform"), '
                'you enter into a binding agreement with PG Hostel to list and manage your hostel properties. '
                'You must be a legitimate business entity or authorized representative of the hostel.'
        ),

        SectionTitle('2. Account Registration & Verification'),
        SectionContent(
            'Dealers must provide accurate business information including hostel license, GSTIN, '
                'property ownership documents, and valid identification. PG Hostel reserves the right to '
                'verify all submitted documents and may reject applications that fail verification.'
        ),

        SectionTitle('3. Listing Requirements'),
        SectionContent(
            'All hostel listings must include accurate descriptions, clear photos, current pricing, '
                'and complete amenities information. Misrepresentation of properties is prohibited. '
                'Listings must comply with all local laws, safety regulations, and have valid operating licenses.'
        ),

        SectionTitle('4. Commission Structure'),
        SectionContent(
            'PG Hostel charges a commission of 10-25% on all successful bookings made through the Platform. '
                'Commission rates are subject to change with 30 days prior notice. '
                'Payment to dealers will be processed within 7 business days after guest check-in.'
        ),

        SectionTitle('5. Booking Management'),
        SectionContent(
            'Dealers must honor all confirmed bookings. Instant booking requests must be accepted '
                'within 2 hours. Dealers are responsible for maintaining accurate availability calendars '
                'and updating them in real-time. Overbooking is strictly prohibited.'
        ),

        SectionTitle('6. Pricing & Payments'),
        SectionContent(
            'Dealers set their own pricing but must maintain consistency across all platforms. '
                'Dynamic pricing is allowed but must not exceed 20% increase during peak seasons '
                'without prior platform approval. All taxes and additional charges must be clearly displayed.'
        ),

        SectionTitle('7. Cancellation Policy'),
        SectionContent(
            'Dealers must adhere to platform-standard cancellation policies. '
                'Hostel-initiated cancellations are penalized at 25% of booking value and '
                'may affect search ranking. Last-minute cancellations (within 24 hours) '
                'incur additional penalties and may result in account suspension.'
        ),

        SectionTitle('8. Guest Services & Standards'),
        SectionContent(
            'Dealers must provide services as described in listings. Basic amenities including '
                'clean rooms, Wi-Fi, security, and 24/7 reception (for large hostels) must be maintained. '
                'Guest complaints must be addressed within 4 hours and resolved within 24 hours.'
        ),

        SectionTitle('9. Reviews & Ratings'),
        SectionContent(
            'Dealers agree to participate in the review system and may not manipulate ratings. '
                'Responses to guest reviews must be professional and constructive. '
                'Harassing guests for positive reviews is strictly prohibited.'
        ),

        SectionTitle('10. Platform Fees & Billing'),
        SectionContent(
            'Monthly platform subscription fees apply for premium features. '
                'All invoices are generated on the 1st of each month and payable within 15 days. '
                'Late payments incur 1.5% monthly interest and may result in service suspension.'
        ),

        SectionTitle('11. Intellectual Property'),
        SectionContent(
            'All content uploaded to the Platform grants PG Hostel a non-exclusive license '
                'to display, modify, and distribute for promotional purposes. '
                'Dealers retain ownership of their content but may not use platform data '
                'for unauthorized commercial purposes.'
        ),

        SectionTitle('12. Data Protection & Privacy'),
        SectionContent(
            'Dealers must comply with data protection laws when handling guest information. '
                'Personal data may only be used for booking purposes and must be securely stored. '
                'Breaches must be reported to PG Hostel within 24 hours.'
        ),

        SectionTitle('13. Termination'),
        SectionContent(
            'Either party may terminate this agreement with 30 days written notice. '
                'PG Hostel may immediately suspend accounts for violations of terms, fraudulent activity, '
                'or repeated guest complaints. Upon termination, all outstanding payments will be settled.'
        ),

        SectionTitle('14. Limitation of Liability'),
        SectionContent(
            'PG Hostel acts as an intermediary platform and is not liable for disputes between '
                'dealers and guests, property damages, personal injuries, or business losses. '
                'Maximum liability is limited to the commission paid in the previous 3 months.'
        ),

        SectionTitle('15. Dispute Resolution'),
        SectionContent(
            'Disputes will first attempt resolution through mediation. '
                'Unresolved disputes will be settled through binding arbitration in accordance with '
                'the Arbitration and Conciliation Act. Legal proceedings must be initiated in the '
                'courts of [Hyderabad].'
        ),

        SectionTitle('16. Amendments'),
        SectionContent(
            'PG Hostel reserves the right to modify these terms at any time. '
                'Dealers will be notified of changes 30 days in advance via email and in-app notifications. '
                'Continued use of the Platform constitutes acceptance of modified terms.'
        ),

        SectionTitle('17. Dealer Support'),
        SectionContent(
            'For questions about these Terms and Conditions or dealer account management, '
                'please contact our dealer support team at: sastastays@gmail.com '
                'or call our dealer helpline: +91-9848313231'
        ),

        const SizedBox(height: 80),
        _buildAcceptanceCheckbox(),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildAcceptanceCheckbox() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: CustomColors.gray.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            color: CustomColors.primary,
            size: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              'I have read, understood, and agree to abide by all Terms and Conditions mentioned above',
              style: TextStyle(
                fontSize: 14,
                color: CustomColors.gray,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: CustomColors.primary,
        ),
      ),
    );
  }
}

class SectionContent extends StatelessWidget {
  final String content;

  const SectionContent(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        content,
        style: const TextStyle(
          fontSize: 16,
          height: 1.5,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}