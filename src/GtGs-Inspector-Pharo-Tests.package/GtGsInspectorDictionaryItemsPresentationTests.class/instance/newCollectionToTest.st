accessing
newCollectionToTest

	^ '
| dictionary |
dictionary := Dictionary new: 10000.
1 to: 10000 do: [ :index |
	dictionary at: index put: index ].
dictionary'