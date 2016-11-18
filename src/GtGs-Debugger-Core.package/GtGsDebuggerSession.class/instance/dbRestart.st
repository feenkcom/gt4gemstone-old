debugging actions
dbRestart

  self stack currentFrame trimToHomeFrame.
  self stack resetFrames.
  ^ self dbFinishStep