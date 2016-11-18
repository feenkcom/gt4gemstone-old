debugging actions
dbStepThrough
  self dbSetThruBreaksDuring: [ self dbStep: #'over' ].
  ^ self dbFinishStep