settings
openSettingsBrowser
	| settingsBrowser window node nodePath |
	settingsBrowser := SettingBrowser new 
		changePackageSet: (RPackage organizer packageNamed: 'GtGs-ClientPharo-Core') asOrderedCollection;
		yourself.
	window := settingsBrowser open.
	window position: Display extent - window extent // 2.
	settingsBrowser expandAll.
	node := settingsBrowser treeHolder nodeNamed: #clientType.
	nodePath := Array 
		with: (settingsBrowser treeHolder nodeNamed: (settingsBrowser treeHolder nodeNamed: node parentName) parentName)
		with: (settingsBrowser treeHolder nodeNamed: node parentName)
		with: node.
	settingsBrowser selection: (MorphTreeMorphSingleSelection new selectedNodePath: nodePath).