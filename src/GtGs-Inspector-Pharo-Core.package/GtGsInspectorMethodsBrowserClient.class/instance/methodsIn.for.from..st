building presentations
methodsIn: aComposite for: selectedNode from: aRemoteBrowser
 "a GtGsInspectorMethodsBrowser"	| methodsPresentation |
	self halt.
	methodsPresentation := self gemstoneClient 
		executeRemotely: #computeMethodsPresentationsFor: 
		on: (self gemstoneClient session asOopType: aRemoteBrowser selfOop)
		withArguments: { self gemstoneClient session asOopType: selectedNode selfOop }.
	aRemoteBrowser methodsPresentation: methodsPresentation.

	methodsPresentation 
		gemstoneClient: self gemstoneClient;
		asGlamourPresentationOn: aComposite