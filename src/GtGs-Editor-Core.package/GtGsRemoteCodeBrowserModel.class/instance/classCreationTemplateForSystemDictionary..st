as yet unclassified
classCreationTemplateForSystemDictionary: aSystemDictionary
	
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