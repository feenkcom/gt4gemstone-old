as yet unclassified
inspectorExampleScript
	|gtClient|
	
	gtClient := GtGsMinimalClient forSessionDescriptionNamed: 'Gt4Gemstone'.
	gtClient performStringRemotely: 'ABAddressBook 
		reset; 
		loadDefaultData.'.
	gtClient performStringRemotelyAndInspect: 'ABAddressBook default'.

	gtClient performStringRemotelyAndInspect: 'SessionTemps current'.
	
	"gtClient logout"