accessing - template
classCreationTemplateForSystemDictionary: aSystemDictionaryName
	^ 'Object subclass: ''NameOfSubclass''
	instVarNames: #()
	classVars: #()
	classInstVars: #()
	poolDictionaries: #()
	inDictionary: ''',aSystemDictionaryName,'''
	category: ''''
	options: #()
'