as yet unclassified
gemstoneOrRemoteWith: aBlock on: aComposite

	^ self 
		gemstoneWith: aBlock 
		orRemoteWith: thisContext sender selector 
		on: aComposite