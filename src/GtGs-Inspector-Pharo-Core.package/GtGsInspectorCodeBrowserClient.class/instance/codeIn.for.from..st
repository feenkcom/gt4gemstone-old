building presentations
codeIn: aComposite for: methodNode from: remoteBrowser
  | codePresentation |

	codePresentation := self gemstoneClient 
		executeRemotely: #computeCodePresentationsFor: 
		on: (self gemstoneClient session asOopType: remoteBrowser selfOop)
		withArguments: { self gemstoneClient session asOopType: methodNode selfOop }.
	remoteBrowser codePresentation: codePresentation.

	codePresentation 
		gemstoneClient: self gemstoneClient;
		asGlamourPresentationOn: aComposite