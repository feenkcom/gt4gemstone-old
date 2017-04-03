*GtGs-Inspector-Pharo-Core
addInspectorImplicitNavigationBlockIn: glamourPresentation from: aGemstonePresentation

	glamourPresentation send: [ :aListNode :originPorts |
		(aListNode gtGsIsBareProxy)
			ifTrue: [ aListNode gtGsAsInspectorProxy ]
			ifFalse: [ 
				(aListNode isKindOf: GtGsInspectorProxy)
					ifTrue: [ 
						self flag: 'needed because of the experimental actions that
						populate the selection through a call from gemstone.'.
						aListNode gemstoneClient ifNil: [ 
							aListNode gemstoneClient: self gemstoneClient ].
						aListNode ]
					ifFalse: [ | presentationTitle serializedProxy |
						(originPorts isNotNil  and: [ originPorts size > 0 ]) 
							ifTrue: [ presentationTitle := self extractPresentationToSelectFrom: originPorts first pane. ]
							ifFalse: [ presentationTitle := nil ].
						serializedProxy := aGemstonePresentation 
							executeRemotely: #computeNextInspectorProxyFor:andSelect:
							withArguments: { 
								aListNode selfOop. self gemstoneClient objectSerializer toString: presentationTitle }.
						serializedProxy
							gemstoneClient: self gemstoneClient;
							yourself ] ] ]