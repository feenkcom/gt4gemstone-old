accessing - views
classCreationTemplateForSystemDictionary: aSystemDictionary
	<glamourRemotePresentation>
	
	^ GtGsGlmTextPresentation new
		display: [ 'Object subclass: ''NameOfSubclass''
	instVarNames: #()
	classVars: #()
	classInstVars: #()
	poolDictionaries: #()
	inDictionary: ''', (aSystemDictionary ifNil: [ '' ] ifNotNil: [ aSystemDictionary name ]) ,'''
	category: ''''
	options: #()
' ] 