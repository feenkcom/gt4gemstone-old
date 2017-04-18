*GtGs-Inspector-Core
gtGsTruncateWithElipsisTo: maxLength
  "Return myself or a copy suitably shortened but with elipsis added"

  ^ self size <= maxLength
    ifTrue: [ self ]
    ifFalse: [ (self copyFrom: 1 to: maxLength - 3) , '...' ]