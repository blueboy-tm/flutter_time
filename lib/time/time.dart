import 'package:shamsi_date/shamsi_date.dart' as shamsi;
import 'package:intl/intl.dart' as intl;

final _f2 = intl.NumberFormat('00').format;
final _f4 = intl.NumberFormat('0000').format;

abstract class DateApi {
  late String year;
  late String month;
  late String monthStr;
  late String day;
  late String wday;
  late String wdayStr;
  static late final Map<int, String> week;
  static late final Map<int, String> months;
}

class PersianDate implements DateApi {
  @override
  late String day;

  @override
  late String month;

  @override
  late String monthStr;

  @override
  late String wday;

  @override
  late String wdayStr;

  @override
  late String year;

  static final Map<int, String> week = {
    1: 'شنبه',
    2: 'یک‌شنبه',
    3: 'دوشنبه',
    4: 'سه‌شنبه',
    5: 'چهارشنبه',
    6: 'پنج‌شنبه',
    7: 'جمعه',
  };

  static final Map<int, String> months = {
    1: 'فروردین',
    2: 'اردیبهشت',
    3: 'خرداد',
    4: 'تیر',
    5: 'مرداد',
    6: 'شهریور',
    7: 'مهر',
    8: 'آبان',
    9: 'آذر',
    10: 'دی',
    11: 'بهمن',
    12: 'اسفند',
  };

  late shamsi.Jalali datetime;
  PersianDate() {
    datetime = DateTime.now().toJalali();
    year = _f4(datetime.year);
    month = _f2(datetime.month);
    day = _f2(datetime.day);
    wday = datetime.weekDay.toString();
    wdayStr = week[int.parse(wday)]!;
    monthStr = months[int.parse(month)]!;
  }
}

class ADDate implements DateApi {
  @override
  late String day;

  @override
  late String month;

  @override
  late String monthStr;

  @override
  late String wday;

  @override
  late String wdayStr;

  @override
  late String year;

  static final Map<int, String> week = {
    1: 'Monday',
    2: 'Tuesday',
    3: 'Wednesday',
    4: 'Thursday',
    5: 'Friday',
    6: 'Saturday',
    7: 'Sunday',
  };

  static final Map<int, String> months = {
    1: 'January',
    2: 'February',
    3: 'March',
    4: 'April',
    5: 'May',
    6: 'June',
    7: 'July',
    8: 'August',
    9: 'September',
    10: 'October',
    11: 'November',
    12: 'December',
  };

  late shamsi.Gregorian datetime;
  ADDate() {
    datetime = DateTime.now().toGregorian();
    year = _f4(datetime.year);
    month = _f2(datetime.month);
    day = _f2(datetime.day);
    wday = datetime.weekDay.toString();
    wdayStr = week[int.parse(wday)]!;
    monthStr = months[int.parse(month)]!;
  }
}

class TurkishDate implements DateApi {
  @override
  late String day;

  @override
  late String month;

  @override
  late String monthStr;

  @override
  late String wday;

  @override
  late String wdayStr;

  @override
  late String year;

  static final Map<int, String> months = {
    1: 'Ocak',
    2: 'Şubat',
    3: 'Mart',
    4: 'Nisan',
    5: 'Mayıs',
    6: 'Haziran',
    7: 'Temmuz',
    8: 'Ağustos',
    9: 'Eylül',
    10: 'Ekim',
    11: 'Kasım',
    12: 'Aralık',
  };

  static final Map<int, String> week = {
    1: 'Pazartesi',
    2: 'Salı',
    3: 'Çarşamba',
    4: 'Perşembe',
    5: 'Cuma',
    6: 'Cumartesi',
    7: 'Pazar',
  };

  late shamsi.Gregorian datetime;
  TurkishDate() {
    datetime = DateTime.now().toGregorian();
    year = _f4(datetime.year);
    month = _f2(datetime.month);
    day = _f2(datetime.day);
    wday = datetime.weekDay.toString();
    wdayStr = week[int.parse(wday)]!;
    monthStr = months[int.parse(month)]!;
  }
}

class DateTimeApi {
  late final String h, H, M, S, a;
  late PersianDate persian;
  late ADDate ad;
  late TurkishDate turkish;
  DateTimeApi() {
    DateTime datetime = DateTime.now();
    if (datetime.hour < 12) {
      h = _f2(datetime.hour);
      a = 'AM';
    } else {
      h = _f2(datetime.hour - 12);
      a = 'PM';
    }
    H = datetime.hour.toString();
    M = _f2(datetime.minute);
    S = _f2(datetime.second);
    persian = PersianDate();
    ad = ADDate();
    turkish = TurkishDate();
  }
}

Map<int, String> constellation = {
  1: 'حَمَل (بره)',
  2: 'ثَور (گاو)',
  3: 'جَوزا (دو پیکر)',
  4: 'سَرَطان (خرچنگ)',
  5: 'اَسَد (شیر)',
  6: 'سُنبُله (خوشه)',
  7: 'میزان (ترازو)',
  8: 'عَقرب (کژدم)',
  9: 'قَوس (سنتور)',
  10: 'جَدْی (بز)',
  11: 'دَلو (آب‌ریز)',
  12: 'حوت (ماهی)',
};
