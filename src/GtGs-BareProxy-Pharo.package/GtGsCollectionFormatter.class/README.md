I am a class that knows how to specify and retrieve a representation  for the elements in a remote collection. For example, my subclasses can retrieve the #printString representation or a STON representation for the elements in the remote collection.

I use a GtGsCollectionSerialization to control how the representation of objects from the remote collection is transfered to the local collection.  I further offer the posiblity to format the elements on the remote side and on the local side (for exampl, for converting).

To obtain a reference to the remote collection I need to be passed a string that when executed remotely returns the actual collection object. The only requirement for the remote collection is to understand the message #do:.

Public API and Key Messages

#elements  returns the representation of the remote collection; redoes the entire computation and transfer every time it is called;
#remoteFormat: specifies a block used to format elements on the remote side 
#localFormat: specifies a block used to format the retrieved representation of an object in the local image.