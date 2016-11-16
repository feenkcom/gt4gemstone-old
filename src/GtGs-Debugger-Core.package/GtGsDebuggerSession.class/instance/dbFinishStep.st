as yet unclassified
dbFinishStep
  | frameIndex currentFrame |
  frameIndex := 1.
  stack navigateFrame: frameIndex.
  currentFrame := stack currentFrame.
  (currentFrame frameContents == nil
    or: [ 
      "needed for G/S 2.4 to recognize when process is no longer active .. may be nil"
      processTerminated == true ])
    ifTrue: [ 
    	^ #'close' ].
  ^ self topezServer objectSerializer toString:
      {#'listIndex:'.
      (currentFrame frameIndex)}