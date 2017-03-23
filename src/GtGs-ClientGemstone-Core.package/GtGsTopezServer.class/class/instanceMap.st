instance creation
instanceMap
  | singleton |
  singleton := SessionTemps current
    at: #'GtGsTopezServer_InstanceMap'
    otherwise: nil.
  singleton == nil
    ifTrue: [ 
      singleton := Dictionary new.
      SessionTemps current at: #'GtGsTopezServer_InstanceMap' put: singleton ].
  ^ singleton