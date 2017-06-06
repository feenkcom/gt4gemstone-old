examples
openOnRemoteAddressBookExampleForClient: aGemstoneClient
	| holderProxy |
	holderProxy := [ABAddressBookHolder exampleHolderSimple]
		gtGsBarePerformRemotelyOn: aGemstoneClient.
	holderProxy := holderProxy gtGsAsInspectorProxy.
	self openOn: holderProxy