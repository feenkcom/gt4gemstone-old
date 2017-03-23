accessing
newCollectionToTest

	^ '
| collection |
collection := OrderedCollection new: 10000.
1 to: 10000 do: [ :index |
	collection at: index put: index ].
collection'