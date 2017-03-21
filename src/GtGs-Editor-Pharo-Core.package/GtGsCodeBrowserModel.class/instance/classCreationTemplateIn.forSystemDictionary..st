building presentations
classCreationTemplateIn: aComposite forSystemDictionary: aSystemDictionaryName

	^ aComposite text
		display: [ 'Object subclass: ''NameOfSubclass''
	instVarNames: #()
	classVars: #()
	classInstVars: #()
	poolDictionaries: #()
	inDictionary: ''', (aSystemDictionaryName ifNil: ['']) ,'''
	category: ''''
	options: #()' ];
		with: [ :aPresentation | 
			self remoteCodeActionsIn: aPresentation ]