import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class SelectedDateFrameWidget extends StatefulWidget {
  const SelectedDateFrameWidget(this.selectedPeriodId, {super.key});

  final int selectedPeriodId;

  @override
  State<SelectedDateFrameWidget> createState() => _SelectedDateFrameWidget();
}

class _SelectedDateFrameWidget extends State<SelectedDateFrameWidget> {
  DateTime getDate(DateTime d) => DateTime(d.year, d.month, d.day);
  var _index = 0;
  final PageController _pageController = PageController(viewportFraction: 0.3);

  List<String> getMonths(DateTime date, int count) {
    List<String> months = [];
    for (var i = 0; i < count; i++)
    {
      months.add(DateFormat.yMMMM().format(date).toUpperCase());

      int newMonth = date.month - 1;
      int newYear = date.year;

      if (newMonth < 1) {
        newMonth = 12;
        newYear -= 1;
      }
      date = DateTime(newYear, newMonth);
    }
    return months;
  }
  
  List<String> getWeeks(DateTime date, int count)
  {
    List<String> weeks = []; 
    for (var i = 0; i < count; i++) {
        var weekStart = date.subtract(Duration(days: date.weekday - 1 - 7 * i));
        var weekEnd = date.add(Duration(days: DateTime.daysPerWeek - date.weekday - 7 * i));
        
        weeks.add('${DateFormat.MMMMd().format(weekStart)} - ${DateFormat.MMMMd().format(weekEnd)}'.toUpperCase());
    }

    return weeks;
  }

  List<String> getYears(DateTime date, int count)
  {
    List<String> years = []; 
    for (var i = 0; i < count; i++) {
      years.add((date.year - i).toString());
    }

    return years;
  }

  @override
  Widget build(BuildContext context) {
    List<String> period = [];
    const int countOfFrames = 5;

    final date = DateTime.now().add(const Duration(hours: 3));
    switch (widget.selectedPeriodId) {
    case 0:
      period = getWeeks(date, countOfFrames);
      break;
    case 1:
      period = getMonths(date, countOfFrames);
      break;
    case 2: 
      period = getYears(date, countOfFrames);
      break;
    default:
      period = [];
    }

    return SizedBox(
      height: 25, // card height
      width: 400,
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: countOfFrames,
        reverse: true,
        controller: _pageController,
        onPageChanged: (int index) => setState(() => _index = index),
        itemBuilder: (context, i) {
          return Transform.scale(
            scale: i == _index ? 1 : 0.8,
            child: GestureDetector(
              onTapUp: (details) {
                var q = MediaQuery.of(context).size.width / 2;
                var r = details.globalPosition.dx;
                if (r >= q) {
                  if (_pageController.hasClients && _pageController.page! > 0) {
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                } else {
                  if (_pageController.hasClients && _pageController.page! < countOfFrames - 1) {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                }
              },
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  color: Colors.white,
                  shadowColor: Colors.white,
                  surfaceTintColor: Colors.white,
                  child: Center(
                    child: Text(
                      period[i],
                      style: const TextStyle(
                        fontSize: 11,
                        backgroundColor: Colors.white,
                        decorationColor: Colors.white,
                        ),
                      selectionColor: Colors.white, 
                    ),
                  ),
                ),
            ),
          );
        },
      ),
    );
  }
}