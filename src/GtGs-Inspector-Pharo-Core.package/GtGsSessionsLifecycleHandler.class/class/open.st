scripting opening
open
	uniqueInstance 
		ifNil: [ self uniqueInstance openOn: self ]
		ifNotNil: [ self uniqueInstance window restoreAndActivate ]