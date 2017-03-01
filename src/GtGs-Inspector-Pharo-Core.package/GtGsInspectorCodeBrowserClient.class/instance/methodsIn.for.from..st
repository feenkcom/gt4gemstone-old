building presentations
methodsIn: aComposite for: classNode from: remoteBrowser
	| methodsPresentation |

	methodsPresentation := self gemstoneClient 
		executeRemotely: #computeMethodsPresentationsFor: 
		on: (self gemstoneClient session asOopType: remoteBrowser selfOop)
		withArguments: { self gemstoneClient session asOopType: classNode selfOop }.
	remoteBrowser methodsPresentation: methodsPresentation.

	methodsPresentation 
		gemstoneClient: self gemstoneClient;
		asGlamourPresentationOn: aComposite