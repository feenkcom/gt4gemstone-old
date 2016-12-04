*GtGs-Inspector-Pharo-Core
ensureLoadingOfElementAt: anIndex
	| diffResult |

	diffResult := self 
		executeRemotely: #computeDiffToIncludeElementAt: 
		withArguments: {anIndex}.
		
	"Update the cached displayValue based on the diff result."
	(self cacheAt: #displayValue) addAll: diffResult.