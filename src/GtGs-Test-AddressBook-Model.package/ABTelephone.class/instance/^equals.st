comparing
= anOther
	anOther class = ABTelephone ifFalse: [ ^false].
	^anOther number = number and: [ anOther prefix = prefix ]