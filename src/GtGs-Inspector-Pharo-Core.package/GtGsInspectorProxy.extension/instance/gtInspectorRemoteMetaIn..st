*GtGs-Inspector-Pharo-Core
gtInspectorRemoteMetaIn: aComposite
	<gtInspectorPresentationOrder: 9>
	
	aComposite dynamic 
		title: 'Meta';
		display: [ | remoteBrowser |
			remoteBrowser := self gemstoneClient 
				executeRemotely: #computeObjectMethodBrowser
				on: self selfOopType
				withArguments: #() 
				andDo: [ :aResult | aResult ].
		
			(GtGsInspectorMethodsBrowserClient new 
				gemstoneClient: self gemstoneClient;
				startOn: remoteBrowser) ]