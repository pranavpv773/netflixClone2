import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/widgets/movie_card_main.dart';

import '../../utility/constants/constants.dart';
import '../../utility/text_Widget/text_widget.dart';

class HomeMovieCards extends StatelessWidget {
  final String title;
  final List<String> posterList;
  const HomeMovieCards(
      {Key? key, required this.title, required this.posterList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        kheight20,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                posterList.length,
                (index) => MainCard(
                      imageUrl: posterList[index],
                    )),
          ),
        ),
      ],
    );
  }
}
