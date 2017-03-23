topez
serializeObjectsUsing: protocol version: protocolVersionString
  objectSerializer := (GsSession currentSession symbolList objectNamed: 'TodeObjectSerializer') 
    serializeUsing:
      {protocol.
      protocolVersionString}.
  ^ nil