actions
selectStackFrameAtIndex: aFrameIndex
	self stackPresentation selection: (self session stack frames at: aFrameIndex)
	"(self stackPresentation port: #selection)
		value: (self session stack frames at: aFrameIndex)"