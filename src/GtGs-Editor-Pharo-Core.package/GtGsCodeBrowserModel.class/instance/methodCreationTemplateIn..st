building presentations
methodCreationTemplateIn: aComposite

	^ aComposite pharoMethod
		display: [ 'messageSelectorAndArgumentNames
	"comment stating purpose of message"

	| temporary variable names |
	statements' ];
		with: [ :aPresentation | 
			self remoteCodeActionsIn: aPresentation ]