instance creation
createFor: aShellId options: optionArray
  | topezServer transcriptClientForwarder topezClientClientForwarder resultArray transcriptClientForwarderOop |
  topezServer := self for: aShellId.
  topezClientClientForwarder := ClientForwarder new.
"  (optionArray includes: #'transcript')
    ifTrue: [ 
      Smalltalk
        at: #'TranscriptProxy'
        ifPresent: [ :cl | 
          transcriptClientForwarder := ClientForwarder new.
          cl registerTranscriptClientForwarder: transcriptClientForwarder.
          transcriptClientForwarderOop := Reflection
            oopOf: transcriptClientForwarder ] ]."
  topezServer topezClientForwarder: topezClientClientForwarder.
  topezServer platformInitialize.
  resultArray := {(topezServer asOop).
  nil "transcriptClientForwarderOop".
  (Reflection oopOf: topezClientClientForwarder).
  ("{'STON' . '0.9.1'}"  (GsSession currentSession symbolList objectNamed: 'TodeObjectSerializer') protocolSignatureArray).
  (self todeServerAPIVersionString)}.
  ^ (GsSession currentSession symbolList objectNamed: 'TodeObjectSerializer') preferredSerializer toJsonString: resultArray