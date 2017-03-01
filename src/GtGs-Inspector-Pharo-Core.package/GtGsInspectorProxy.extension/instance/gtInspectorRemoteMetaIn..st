*GtGs-Inspector-Pharo-Core
gtInspectorRemoteMetaIn: aComposite
	<gtInspectorPresentationOrder: 9>
	
	aComposite dynamic 
		title: 'Meta';
		display: [ 
			codeBrowser := self gemstoneClient 
				executeRemotely: #computeObjectMethodBrowser
				on: self selfOopType
				withArguments: #().
		
			(GtGsInspectorCodeBrowserClient new 
				gemstoneClient: self gemstoneClient;
				startOn: self) ]