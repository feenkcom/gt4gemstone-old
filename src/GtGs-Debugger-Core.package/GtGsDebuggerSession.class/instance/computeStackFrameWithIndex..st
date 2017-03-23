callbacks
computeStackFrameWithIndex: anInteger
	| targetStackFrame |
	targetStackFrame := (self stack frames at: anInteger).
	targetStackFrame updateCacheFullIn: self.
	^ self topezServer objectSerializer toString: targetStackFrame