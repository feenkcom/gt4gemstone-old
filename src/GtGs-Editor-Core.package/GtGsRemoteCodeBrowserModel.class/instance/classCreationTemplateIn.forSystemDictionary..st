accessing - views
classCreationTemplateIn: aComposite forSystemDictionary: aSystemDictionary

	^ aComposite text
		display: [ 'Object subclass: ''NameOfSubclass''
	instVarNames: #()
	classVars: #()
	classInstVars: #()
	poolDictionaries: #()
	inDictionary: ''', (aSystemDictionary ifNil: [ '' ] ifNotNil: [ aSystemDictionary name ]) ,'''
	category: ''''
	options: #()' ]