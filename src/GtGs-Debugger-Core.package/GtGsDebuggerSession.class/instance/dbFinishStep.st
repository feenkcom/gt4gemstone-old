actions
dbFinishStep
  | frameIndex currentFrame |
  frameIndex := 1.
  self stack navigateFrame: frameIndex.
  currentFrame := self stack currentFrame.
  (currentFrame frameContents == nil
    or: [ 
      "needed for G/S 2.4 to recognize when process is no longer active .. may be nil"
      processTerminated == true ])
    ifTrue: [ 
    	^ self topezServer objectSerializer toString: {#'closeAndReturn'} ].
  ^ self topezServer objectSerializer toString:
      {#'listIndex:'.
      (currentFrame frameIndex)}