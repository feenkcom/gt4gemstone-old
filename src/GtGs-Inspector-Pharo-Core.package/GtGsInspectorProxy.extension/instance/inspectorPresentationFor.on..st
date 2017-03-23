*GtGs-Inspector-Pharo-Core
inspectorPresentationFor: anObjectSelector on: aComposite
	"For internal use only. Always assume I'll be called from #gemstoneOrRemoteWith:on: so calling #sender
	twice on #thisContext is acceptable."
	^ self 
		inspectorPresentationFor: #yourself
		using: thisContext sender sender selector
		on: aComposite