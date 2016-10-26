as yet unclassified
instanceMap
  | singleton |
  singleton := SessionTemps current
    at: #'GtGsBasicTopezServer_InstanceMap'
    otherwise: nil.
  singleton == nil
    ifTrue: [ 
      singleton := Dictionary new.
      SessionTemps current at: #'GtGsBasicTopezServer_InstanceMap' put: singleton ].
  ^ singleton