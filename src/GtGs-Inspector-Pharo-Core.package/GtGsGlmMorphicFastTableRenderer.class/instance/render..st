rendering
render: aPresentation
	| container navigationPager |
	container := super render: aPresentation.
	
	navigationPager := GtGsNavigationPagerMorph new
		buildPanel.
	container submorphs first layoutFrame bottomOffset: -1 * 22.
	navigationPager layoutFrame: (LayoutFrame fractions: (0 @ 1 corner: 1 @ 1) offsets: (0 @ (-1 * 22) corner: 0 @ 0)).
	container addMorphBack: navigationPager.
	^ container