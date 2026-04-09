import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F3F7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // ── TOP HEADER ──────────────────────────────────────────────
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 42,
                          height: 42,
                          decoration: const BoxDecoration(
                            color: Color(0xFF4B3EE8),
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'S',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Welcome back,',
                              style: TextStyle(fontSize: 11, color: Colors.grey),
                            ),
                            Text(
                              'STUDENT NAME',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Bell icon without red dot on profile page (matches design)
                    const Icon(
                      Icons.notifications_none,
                      size: 26,
                      color: Colors.black87,
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // ── USER PROFILE TITLE ───────────────────────────────────────
                Center(
                  child: Column(
                    children: [
                      const Text(
                        'User Profile',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Big avatar circle with initials
                      Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(
                          color: Color(0xFF4B3EE8),
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'SN',      // ← Replace with YOUR initials
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // ── NAME FIELD ───────────────────────────────────────────────
                _buildProfileField(
                  label: 'Name',
                  value: 'STUDENT NAME (YOUR NAME HERE)',
                  // ↑ Replace with your full name, e.g. 'Mohammad Rahman'
                ),

                const SizedBox(height: 10),

                // ── STUDENT ID FIELD ─────────────────────────────────────────
                _buildProfileField(
                  label: 'Student ID',
                  value: 'S12345 (YOUR ID HERE)',
                  // ↑ Replace with your IUB student ID, e.g. '2130101'
                ),

                const SizedBox(height: 10),

                // ── EMAIL FIELD ──────────────────────────────────────────────
                _buildProfileField(
                  label: 'Email',
                  value: 'student.name@iub.edu.bd (YOUR IUB EMAIL HERE)',
                  // ↑ Replace with your email, e.g. 'yourname@iub.edu.bd'
                ),

                const SizedBox(height: 10),

                // ── BIO / STORY FIELD ────────────────────────────────────────
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Bio / Story',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        // ↓ Replace this entire text with YOUR own bio/story
                        '"I\'m currently focusing on my final year, balancing studies '
                        'with building side projects. I believe financial health is key to '
                        'academic success. I love hiking on weekends and planning '
                        'my next big travel adventure!"',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                          height: 1.6,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        '(Note: Students should replace the text above with their own description here!)',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xFFE53935),
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Reusable profile info field box
  Widget _buildProfileField({
    required String label,
    required String value,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

