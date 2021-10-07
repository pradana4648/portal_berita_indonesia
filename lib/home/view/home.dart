import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemStatusBarContrastEnforced: false,
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        drawer: const Drawer(),
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    colorFilter:
                        ColorFilter.mode(Colors.white12, BlendMode.lighten),
                    image:
                        NetworkImage('https://picsum.photos/seed/picsum/600'),
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Chip(
                      label: Text('News of the Day'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Deserunt amet incididunt eiusmod nisi minim sint mollit quis eu in qui cupidatat.',
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(fontWeight: FontWeight.w600),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text('Learn More'),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Breaking News',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                        TextButton(onPressed: () {}, child: const Text('More'))
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return LimitedBox(
                          maxWidth: MediaQuery.of(context).size.width * 0.8,
                          child: Column(
                            children: [
                              /// Image
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                          'https://picsum.photos/seed/picsum/600/300'),
                                    ),
                                  ),
                                  width: double.infinity,
                                  margin: const EdgeInsets.all(15),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Do duis exercitation ullamco consectetur magna mollit veniam qui qui.',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                isThreeLine: true,
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('4 hours ago'),
                                    Text('By anak zamrud')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
