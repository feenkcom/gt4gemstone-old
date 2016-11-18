category: 'Printing'
method: ClientForwarder
printOn: aStream
aStream nextPutAll: 'A ClientForwarder'
%

method:
printOn: aStream recursionSet: anIdentitySet
self printOn: aStream

%

method:
class
^ ClientForwarder

%
