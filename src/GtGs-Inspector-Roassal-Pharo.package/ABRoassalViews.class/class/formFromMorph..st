private
formFromMorph: aMorph
	"Answer a new task thumbnail for the receiver."

	|f t |
	f := Form extent: aMorph extent depth: Display depth.
	t := MatrixTransform2x3 withScale: 1.
	f getCanvas
		transformBy: t
		clippingTo: f boundingBox
		during: [:c | c translateBy: aMorph topLeft negated during: [:ct | aMorph fullDrawOn: ct]]
		smoothing: 2.
	^ f