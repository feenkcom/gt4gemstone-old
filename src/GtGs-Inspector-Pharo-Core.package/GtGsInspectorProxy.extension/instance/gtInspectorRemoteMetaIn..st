*GtGs-Inspector-Pharo-Core
gtInspectorRemoteMetaIn: aComposite
	<gtInspectorPresentationOrder: 9>
	
	aComposite dynamic 
		title: 'Meta';
		display: [ 
			methodsBrowser := self gemstoneClient 
				executeRemotely: #computeObjectMethodBrowser
				on: self selfOopType
				withArguments: #().
		
			(GtGsInspectorMethodsBrowserClient new 
				gemstoneClient: self gemstoneClient;
				startOn: self) ]