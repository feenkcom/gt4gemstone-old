I am strategy specifying how to serialize a remore collection and materialize it  in the local image. I should be used from within a GtGsCollectionFormatter. I used the formatting blocks provides by the formatter to control the representation of the transfered objects.

My subclasses should implement #elementsFor:. This method is called by the formatter to retrieve the remote collection.