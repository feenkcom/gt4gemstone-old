*GtGs-ClientGemstone-Core
gtGsCrlfMap
  ^ SessionTemps current
    at: #'Squeak_Line_Ending_CRLF_Map'
    ifAbsent: [ | cr lf crlf |
      cr := Character cr.
      lf := Character lf.
      crlf := ByteArray new.
      crlf
        add: cr asciiValue;
        add: lf asciiValue.
      SessionTemps current
        at: #'Squeak_Line_Ending_CRLF_Map'
        put: crlf asByteArray gtGsByteArrayMap ]