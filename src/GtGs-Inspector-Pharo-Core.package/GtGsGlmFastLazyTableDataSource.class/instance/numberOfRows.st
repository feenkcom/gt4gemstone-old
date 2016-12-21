accessing
numberOfRows
	"This method is called by FastTable before calling the display block that computes the elements."
	^ self stopIndex - self startIndex + 1 