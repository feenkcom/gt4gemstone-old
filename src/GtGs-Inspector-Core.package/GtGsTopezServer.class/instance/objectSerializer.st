topez
objectSerializer
  objectSerializer
    ifNil: [ objectSerializer := (GsSession currentSession symbolList objectNamed: 'TodeObjectSerializer') defaultSerializer ].
  ^ objectSerializer