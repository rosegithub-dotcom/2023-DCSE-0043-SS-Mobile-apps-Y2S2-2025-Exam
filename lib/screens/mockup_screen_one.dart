// screens/mockup_screen_one.dart
import 'package:flutter/material.dart';

class MockupScreenOne extends StatelessWidget {
  const MockupScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650, // Set a specific height for the demonstration
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF5C5485),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with search bar - this is the correct "app bar" from the mockup
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: const Color(0xFF01C6AC),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'TMDB',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 36,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4B456D),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.search, color: Colors.white, size: 20),
                        SizedBox(width: 8),
                        Text(
                          'Find your movies...',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'Sort | Filters',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          
          // Title
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Text(
              'Discover & Enjoy\nYour Favourite Movies',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
          // Categories tabs
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF01C6AC),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Popular',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 15),
                const Text(
                  'Upcoming',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(width: 15),
                const Text(
                  'Now Playing',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          
          // Movie list
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                _buildMovieItem(
                  'To All the Boys: P.S. I Still Love You (2019)',
                  '2019 • 1h 38m',
                  'Romance, Comedy',
                  'Lara Jean and Peter have just taken their romance from a lo...',
                  'assets/images/john wick.jpeg.jpg',
                  '7.2',
                ),
                const SizedBox(height: 15),
                _buildMovieItem(
                  'Baby Driver',
                  '2019 • 1h 53m',
                  'Car Action, Crime, Drama',
                  'After being coerced into working for a crime boss, a yo...',
                  'assets/images/baby_driver.jpeg',
                  '7.2',
                ),
                const SizedBox(height: 15),
                _buildMovieItem(
                  'John Wick',
                  '2019 • 2h 10m',
                  'Action, Crime, Thriller',
                  'John Wick is on the run after killing a member of the intern...',
                  'assets/images/john_wick.jpeg',
                  '7.2',
                ),
                const SizedBox(height: 15),
                _buildMovieItem(
                  'Exit',
                  '2019 • 2h 10m',
                  'Action, Comedy',
                  'Yong-nam (Jo Jung-sik) uses rock...',
                  'assets/images/exit.jpg',
                  '7.2',
                ),
              ],
            ),
          ),
          
          // Bottom navigation
          Container(
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(Icons.home, 'Home', true),
                _buildNavItem(Icons.movie, 'Movies', false),
                _buildNavItem(Icons.bookmark_border, 'Bookmark', false),
                _buildNavItem(Icons.person_outline, 'Account', false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMovieItem(String title, String duration, String genre, String description, String image, String rating) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // Movie poster
          Container(
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Center(
                child: title.contains('Baby Driver') ? 
                  Image.asset('assets/images/placeholder.png', fit: BoxFit.cover) :
                  (title.contains('John Wick') ? 
                    Container(
                      color: Colors.orangeAccent,
                      child: const Center(child: Text('JOHN WICK', style: TextStyle(color: Colors.white))),
                    ) :
                    Container(
                      color: title.contains('Exit') ? Colors.purple.shade200 : Colors.yellow.shade200,
                      child: Center(
                        child: Text(
                          title.split(':').first,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ),
              ),
            ),
          ),
          // Movie details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          title.split('(').first,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Icon(Icons.more_horiz, color: Colors.white, size: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    duration,
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    genre,
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          rating,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isSelected) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon, 
          color: isSelected ? const Color(0xFF01C6AC) : Colors.grey,
          size: 24,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? const Color(0xFF01C6AC) : Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}


