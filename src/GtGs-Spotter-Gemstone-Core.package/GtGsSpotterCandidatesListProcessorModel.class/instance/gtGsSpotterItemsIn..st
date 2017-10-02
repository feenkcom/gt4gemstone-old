ui
gtGsSpotterItemsIn: aComposite

	^ aComposite fastList
		enableLazyLoading;
		display: [ self currentSearchResults ];
		format: self itemNameBlock