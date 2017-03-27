executing
evaluateSTONSmalltalk: smalltalkSource
  | result |
  "self ensureSessionMethodsEnabled."
  result := self performString: smalltalkSource inContext: nil.
  "self ensureSessionMethodsEnabled."
  ^ self objectSerializer toString: result