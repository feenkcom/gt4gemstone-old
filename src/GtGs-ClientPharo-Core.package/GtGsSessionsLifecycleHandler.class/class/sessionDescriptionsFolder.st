accessing
sessionDescriptionsFolder
	| gsDevKitLocation |
	
	gsDevKitLocation := (GsDevKitSession gsDevKitSessionDescriptionPath) asFileReference.
	^ gsDevKitLocation exists 
		ifTrue: [ gsDevKitLocation ]
		ifFalse: [ 
			(FileLocator imageDirectory / 'pharo-local' / 'gt4gemstone') asFileReference ensureCreateDirectory  ]