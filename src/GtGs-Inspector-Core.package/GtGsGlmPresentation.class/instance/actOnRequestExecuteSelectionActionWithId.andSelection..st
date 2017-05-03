callbacks
actOnRequestExecuteSelectionActionWithId: anInteger andSelection: anObject

	(self gsSelectionActions at: anInteger) 
		executeForPresentation: self 
		andSelection: (self selectionFromCallbackArgument: anObject)