*GtGs-Inspector-Core
gtGsInspectorName
  | ws |
  ws := PrintStream printingOn: String new "maxSize: 100".
  self printOn: ws.
  ^ ws _collection