/* BEGIN */



class Region
{
  String  iso;      // Трёхсимвольный код страны
  String  name;     // Название в удобочитаемом виде
  String? province; // null — значит, по всей стране

  Region(this.iso, this.name, [this.province = null]);

  @override
  String toString() =>
    '$iso, $name' + (province != null ? ', $province' : '');
}

class CovidReport
{
  /*
   * Статистика по коронавирусу на момент времени в определённом месте.
   * Без приставки diff — за всё время, иначе с прошлого раза (за день)
   */
  late String last_update; // '1970-01-01 04:00:00'
  late String date;        // '1970-01-01'
  Region?     region;      // null — значит, по всему миру

  // Подтверждено случаев заболевания
  late int confirmed;
  late int confirmed_diff;

  // Смертей
  late int deaths;
  late int deaths_diff;

  // Вызворовевших
  late int recovered;
  late int recovered_diff;

  // Болеющих на данный момент
  late int active;
  late int active_diff;

  // Вероятность смерти (именно вероятностеь, не процент)
  late num fatality_rate;


  CovidReport(Map<String, dynamic> map, [this.region = null])
  {
    confirmed      = map['confirmed'];
    confirmed_diff = map['confirmed_diff'];
    deaths         = map['deaths'];
    deaths_diff    = map['deaths_diff'];
    recovered      = map['recovered'];
    recovered_diff = map['recovered_diff'];
    active         = map['active'];
    active_diff    = map['active_diff'];
    fatality_rate  = map['fatality_rate'];
    last_update    = map['last_update'];
    date           = map['date'];
  }

  CovidReport.sum(List<CovidReport> items, [this.region = null])
  {
    var sum = (a, b) => a + b;

    confirmed      = items.map((x) => x.confirmed)      .fold(0, (a, b) => a + b);
    confirmed_diff = items.map((x) => x.confirmed_diff) .fold(0, (a, b) => a + b);
    deaths         = items.map((x) => x.deaths)         .fold(0, (a, b) => a + b);
    deaths_diff    = items.map((x) => x.deaths_diff)    .fold(0, (a, b) => a + b);
    recovered      = items.map((x) => x.recovered)      .fold(0, (a, b) => a + b);
    recovered_diff = items.map((x) => x.recovered_diff) .fold(0, (a, b) => a + b);
    active         = items.map((x) => x.active)         .fold(0, (a, b) => a + b);
    active_diff    = items.map((x) => x.active_diff)    .fold(0, (a, b) => a + b);
    date           = items[0].date;
    last_update    = items.map((x) => x.last_update)
      .reduce((a, b) => b.compareTo(a) > 0 ? b : a);
    // TODO: точно так?
    fatality_rate  = items.map((x) => x.fatality_rate * x.confirmed)
      .fold(0, sum) / confirmed;
  }

  @override
  String toString()
  {
    String s = '';
    s += "confirmed:      $confirmed\n";
    s += "confirmed_diff: $confirmed_diff\n";
    s += "deaths:         $deaths\n";
    s += "deaths_diff:    $deaths_diff\n";
    s += "recovered:      $recovered\n";
    s += "recovered_diff: $recovered_diff\n";
    s += "active:         $active\n";
    s += "active_diff:    $active_diff\n";
    s += "fatality_rate:  $fatality_rate\n";
    s += "last_update:    $last_update\n";
    s += "date:           $date\n";
    s += "region:         ${region.toString()}\n";
    return s;
  }
}



// END
