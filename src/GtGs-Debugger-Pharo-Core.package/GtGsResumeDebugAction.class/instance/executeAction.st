as yet unclassified
executeAction
	self halt.
	self session 
		resumeGemstoneProcess;
		clear.
	self debugger close. 