
import 'package:ch10_layouts/widgets/left_drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layouts',style: TextStyle(color: Colors.black87),),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black54),
        // leading: IconButton(icon:const Icon(Icons.menu), onPressed: () {},
        // ),
        actions: <Widget>[
          Padding(
            padding:const EdgeInsets.only(right: 5.0),
            child: IconButton(onPressed: () {},  icon: const Icon(Icons.cloud_queue),
            ),
          ),
        ],
      ),
      drawer: const LeftDrawerWidget(),
      // endDrawer: const LeftDrawerWidget(),
      body: _buildBody(),
    );
  }
  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildJournalHeaderImage(),
          SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildJournalEntry(),
                    const Divider(),
                    _buildJournalWeather(),
                    const Divider(),
                    _buildJournalTags(),
                    const Divider(),
                    _buildJournalFooterImages(),
                  ],
                ),
          )),
        ],
      ),
    );
  }
  Image _buildJournalHeaderImage() {
    return const Image(
        image: AssetImage('lib/assets/images/present.jpg'),
        fit: BoxFit.cover,
    );
  }
  Column _buildJournalEntry() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('My Birthday',style: TextStyle(fontSize: 32.0,fontWeight: FontWeight.bold,),),
        Divider(),
        Text('It’s going to be a great birthday. We are going out for dinner at my '
        'favorite place, then watch a movie after we go to the geriatric for ice cream and '
    'espresso.',style: TextStyle(color: Colors.black54,),)
      ],
    );
  }
  Row _buildJournalWeather() {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.wb_sunny,color: Colors.orange,),
          ],
        ),
        SizedBox(width: 16.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  '81º Clear',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ],
            ),
            Row(
              children: <Widget> [
                Text(
                  '4500 San Alpha Drive, Dallas, TX United States',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
  Wrap _buildJournalTags() {
    return Wrap(
      runSpacing: 8.0,
      spacing: 8.0,
      children: List.generate(7, (index) {
        return Chip(
          label: Text('Gift ${index + 1}',style: const TextStyle(fontSize: 10.0),),
          avatar: Icon(
            Icons.card_giftcard,
            color: Colors.blue.shade300,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: const BorderSide(color: Colors.grey),
          ),
          backgroundColor: Colors.grey.shade100,
        );
      }),
    );
  }
  Row _buildJournalFooterImages() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('lib/assets/images/salmon.jpg'),
          radius: 40.0,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('lib/assets/images/asparagus.jpg'),
          radius: 40.0,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('lib/assets/images/strawberries.jpg'),
          radius: 40.0,
        ),
        SizedBox(
          width: 100.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Icon(Icons.cake),
              Icon(Icons.star_border),
              Icon(Icons.music_note),
              // Icon(Icons.movie)
            ],
          ),
        ),
      ],
    );
  }
}
