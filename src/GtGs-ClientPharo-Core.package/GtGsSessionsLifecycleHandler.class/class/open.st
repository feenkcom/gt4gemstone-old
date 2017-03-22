scripting opening
open
	self hasUniqueInstance 
		ifFalse: [ self uniqueInstance openOn: self ]
		ifTrue: [
			self uniqueInstance window 
				ifNil: [ 
					"In case there is a presentation that does not have a window, 
					most likely an error occurred while opening he window. Reset 
					the presentatiob and open it again instead of restoring it."
					self clearInstance.
					self uniqueInstance openOn: self ]
				ifNotNil: [ self uniqueInstance window restoreAndActivate ] ]