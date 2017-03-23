building presentations
classCreationTemplateIn: aComposite forCategory: aCategoryName

	^ aComposite text
		display: [ 'Object subclass: ''NameOfSubclass''
	instVarNames: #()
	classVars: #()
	classInstVars: #()
	poolDictionaries: #()
	inDictionary: ''''
	category: ''', (aCategoryName ifNil: ['']) ,'''
	options: #()' ];
		with: [ :aPresentation | 
			self remoteCodeActionsIn: aPresentation ]