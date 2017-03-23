accessing
newCollectionToTest

	^ '
| collection |
collection := Array new: 10000.
1 to: collection size do: [ :index |
	collection at: index put: index ].
collection'