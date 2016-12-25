actions
loadNextPage
	| diffStartIndex diffEndIndex test4 |

	diffStartIndex := self stopIndex + 1. 
	diffEndIndex := self totalNumberOfRows min: (self stopIndex + self amountToIncrement).
	self ensureLoadingOfElementsBetween: diffStartIndex and: diffEndIndex.
	self updateStopIndexTo: diffEndIndex.
	
	"self tableRefresh."
	self table moveShowIndexTo: (self table container calculateStartIndexWhenShowing: {  }). 