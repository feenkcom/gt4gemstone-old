as yet unclassified
createFor: aShellId options: optionArray
  | topezServer transcriptClientForwarder topezClientClientForwarder resultArray transcriptClientForwarderOop |
  topezServer := self for: aShellId.
  topezClientClientForwarder := ClientForwarder new.
  transcriptClientForwarderOop := nil.
  "(optionArray includes: #'transcript')
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
  transcriptClientForwarderOop.
  (Reflection oopOf: topezClientClientForwarder).
  ({'STON' . '0.9.1'}  "TodeObjectSerializer protocolSignatureArray").
  (self todeServerAPIVersionString)}.
  ^ "TodeObjectSerializer preferredSerializer"  STON toJsonString: resultArray