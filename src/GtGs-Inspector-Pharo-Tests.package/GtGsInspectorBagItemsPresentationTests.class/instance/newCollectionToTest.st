accessing
newCollectionToTest

	^ '
| collection |
collection := Bag new: 10000.
1 to: 10000 do: [ :index |
	collection add: index ].
collection'