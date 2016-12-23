debugging actions
dbStepThrough
  (self topezServer effectiveApiVersion < '1.4.0' gtGsAsMetacelloVersionNumber
    or: [ 
      (System stoneVersionReport at: 'gsVersion') gtGsAsMetacelloVersionNumber
        < '3.2.0' gtGsAsMetacelloVersionNumber ])
    ifTrue: [ self dbSetThruBreaksDuring: [ self dbStep: #'over' ] ]
    ifFalse: [ self dbStep: #'thru' ].
  ^ self dbFinishStep