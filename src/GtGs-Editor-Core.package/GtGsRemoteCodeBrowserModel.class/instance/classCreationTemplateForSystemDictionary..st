as yet unclassified
classCreationTemplateForSystemDictionary: aSystemDictionary
	<glamourRemotePresentation>
	
	^ GtGsGlmTextPresentation new
		display: [ 'Object subclass: ''NameOfSubclass''
	instVarNames: #()
	classVars: #()
	classInstVars: #()
	poolDictionaries: #()
	inDictionary: ''', aSystemDictionary ,'''
	category: ''''
	options: #()
' ] 