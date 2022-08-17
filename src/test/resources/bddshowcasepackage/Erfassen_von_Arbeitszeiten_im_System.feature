# language: de

Funktionalität: Erfassen von Arbeitszeiten im System

  Szenariogrundriss: Berechnung der gesetzlich vorgeschriebenen Pausenzeiten
    Angenommen Ein Mitarbeiter ist im System erfasst und einem Projekt zugeordnet
    Wenn der Mitarbeiter die Kommenzeit <Kommenzeit> und Gehenzeit <Gehenzeit> erfasst
    Dann berechnet das System korrekt die gesetzlich vorgeschriebene Ruhepause von <Ruhepause> Minuten

    Beispiele:

      | Kommenzeit | Gehenzeit | Ruhepause|
      | "07:00"    | "13:00"   | 0        |
      | "07:00"    | "13:15"   | 15       |
      | "08:00"    | "16:00"   | 30       |
      | "08:00"    | "17:33"   | 33       |
      | "08:00"    | "17:45"   | 45       |
      | "08:00"    | "18:00"   | 45       |
      | "08:00"    | "18:45"   | 45       |