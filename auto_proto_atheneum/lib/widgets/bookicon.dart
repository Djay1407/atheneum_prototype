// import 'package:core/core.dart';
import 'package:auto_proto_atheneum/Screens/bookpage.dart';
import 'package:flutter/material.dart';
// import 'package:inkino/ui/events/event_poster.dart';
// import 'package:inkino/ui/events/event_release_date_information.dart';
// import 'package:meta/meta.dart';

class EventGridItem extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.white),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Placeholder(),
          // EventPoster(event: event),
          // _TextualInfo(event),
          // Positioned(                   //release date part on top of pics in 'comming soon' tab
          //   top: 10.0,
          //   child: Visibility(
          //     visible: showReleaseDateInformation,
          //     child: EventReleaseDateInformation(event),
          //   ),
          // ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: (){
                 Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => EventDetailsPage(),
      ),
    );
              },
              child: Container(),
            ),
          ),
        ],
      ),
    );
  }
}

class _TextualInfo extends StatelessWidget {           //decoration on the pics in grid
  // _TextualInfo(this.event);
  // final Event event;

  BoxDecoration _buildGradientBackground() {
    return const BoxDecoration(
      gradient: LinearGradient(                //to give black highlight on bottom of pic to make text visible
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        stops: [0.0, 0.7, 0.7],
        colors: [
          Colors.black,
          Colors.transparent,
          Colors.transparent,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildGradientBackground(),
      padding: const EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
      // child: _TextualInfoContent(event),
        child: _TextualInfoContent(),
    );
  }
}

class _TextualInfoContent extends StatelessWidget {    //info at the top of every pic in grid
  // _TextualInfoContent(this.event);
  // final Event event;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(                               //title in the last of each grid picture
          "title",
          // event.title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 4.0),        //genres in the last of each grid picture
        Text(
          "genre",
          // event.genres,
          style: const TextStyle(
            fontSize: 12.0,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}


// class EventReleaseDateInformation extends StatelessWidget {
//   // static final _releaseDateFormat = DateFormat('dd.MM.yyyy');

//   // EventReleaseDateInformation(this.event);
//   // final Event event;

//   @override
//   Widget build(BuildContext context) {
//     // final messages = MessageProvider.of(context);

//     return Container(
//       color: Colors.black87,
//       padding: const EdgeInsets.only(
//         top: 5.0,
//         right: 20.0,
//         bottom: 5.0,
//         left: 10.0,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(                                        //'release date' text
//             messages.releaseDate,
//             style: TextStyle(
//               color: Theme.of(context).accentColor,
//               fontSize: 12.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 2.0),
//           Text(                                         // the date of release
//             _releaseDateFormat.format(event.releaseDate),
//             style: const TextStyle(
//               color: const Color(0xFFFEFEFE),
//               fontWeight: FontWeight.w300,
//               fontSize: 16.0,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }