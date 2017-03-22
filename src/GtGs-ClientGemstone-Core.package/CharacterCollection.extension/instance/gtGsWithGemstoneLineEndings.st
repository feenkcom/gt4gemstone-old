*GtGs-ClientGemstone-Core
gtGsWithGemstoneLineEndings
  "assume the string is textual, and that CR, LF, and CRLF are all 
  valid line endings.  Replace each occurence with a single LF"

  | cr lf crlf inPos outPos outString lineEndPos newOutPos |
  cr := Character cr.
  lf := Character lf.
  crlf := ByteArray new.
  crlf
    add: cr asciiValue;
    add: lf asciiValue.
  inPos := 1.
  outPos := 1.
  outString := self class _newString: self size.
  [ 
  lineEndPos := self indexOfAnyOf: crlf startingAt: inPos ifAbsent: [ 0 ].
  lineEndPos ~= 0 ]
    whileTrue: [ 
      newOutPos := outPos + (lineEndPos - inPos + 1).
      outString
        replaceFrom: outPos
        to: newOutPos - 2
        with: self
        startingAt: inPos.
      outString at: newOutPos - 1 put: lf.
      outPos := newOutPos.
      ((self at: lineEndPos) = cr
        and: [ lineEndPos < self size and: [ (self at: lineEndPos + 1) = lf ] ])
        ifTrue: [ 
          "CRLF ending"
          inPos := lineEndPos + 2 ]
        ifFalse: [ 
          "CR or LF ending"
          inPos := lineEndPos + 1 ] ].	"no more line endings.  copy the rest"
  newOutPos := outPos + (self size - inPos + 1).
  outString
    replaceFrom: outPos
    to: newOutPos - 1
    with: self
    startingAt: inPos.
  ^ outString copyFrom: 1 to: newOutPos - 1