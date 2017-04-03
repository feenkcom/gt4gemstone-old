utils
allPresentationsFromPane: aPane

	^ aPane 
		presentations "The composite inside the pane"
		presentations first  "The dynamic presentation created by the inspector"
		cachedPresentation   "The presentations from a dynamic presentation"
		presentations first  "The dynamic presentation uses a composite to store presentations internally"
		presentations        "The inspector uses a composite to store the actual presentations"