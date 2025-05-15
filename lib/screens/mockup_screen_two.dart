// screens/mockup_screen_two.dart
import 'package:flutter/material.dart';

class MockupScreenTwo extends StatelessWidget {
  const MockupScreenTwo({super.key});

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
          // Header with TMDB logo
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
              ],
            ),
          ),
          
          // Featured movie section
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
            child: Stack(
              children: [
                // Movie image
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 220,
                    width: double.infinity,
                    color: Colors.grey.shade700,
                    child: const Center(
                      child: Text(
                        'Jumanji: The Next Level',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                
                // Movie title and genres overlay
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.8),
                        ],
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Jumanji: The Next Level',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Action • Adventure • Comedy • Fantasy',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // What's Popular section
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 15),
            child: Text(
              "What's Popular",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
          // Popular movies grid
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: _buildPopularMovieCard(
                    'Birds of Prey',
                    'Action, Crime, Comedy',
                    'assets/images/baby driver.jpg',
                    '7.3',
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: _buildPopularMovieCard(
                    'Red Sparrow',
                    'Mystery, Thriller',
                    'assets/images/john wick.jpg',
                    '6.5',
                  ),
                ),
              ],
            ),
          ),
          
          // Now Playing section
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 25, 20, 15),
            child: Text(
              "Now Playing",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
          // Now Playing movies horizontal list
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                _buildNowPlayingMovieCard(
                  'To All the Boys: P.S. I Still Love You',
                  '8.0',
                  Colors.yellow.shade200,
                ),
                const SizedBox(width: 15),
                _buildNowPlayingMovieCard(
                  'Ford v Ferrari',
                  '7.3',
                  Colors.blue.shade200,
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

  Widget _buildPopularMovieCard(
      String title, String genres, String imagePath, String rating) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade700,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Container(
              height: 120,
              width: double.infinity,
              color: Colors.grey.shade600, // Placeholder for image
              child: Center(child: Text(imagePath)), // Displays image path as placeholder
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  genres,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      rating,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNowPlayingMovieCard(String title, String rating, Color color) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.grey.shade600, // Placeholder for image
              child: const Center(child: Text('Movie Poster')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      rating,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: isActive ? Colors.black : Colors.grey,
          size: 24,
        ),
        Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.black : Colors.grey,
            fontSize: 12,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}