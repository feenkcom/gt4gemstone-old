baseline
baseline: spec
	<baseline>
	spec for: #'pharo' do: [
		spec
        baseline: 'Tugrik'
          with: [ 
              spec
                loads: 'default';
                repository: 'github://dalehenrich/Tugrik:master/repository' ].

		spec 
			package: 'GtGs-Gemstone-Stubs';
			package: 'GtGs-Inspector-Core'  with: [ spec requires: #('GtGs-Gemstone-Stubs' 'Tugrik') ];
			package: 'GtGs-Inspector-Pharo-Core'  with: [ spec requires: #('GtGs-Inspector-Core') ] ].
		
	 spec for: #'gemstone' do: [
		spec
        baseline: 'Tugrik'
          with: [ 
              spec
                loads: 'default';
                repository: 'github://dalehenrich/Tugrik:master/repository' ].
		spec
			package: 'GtGs-Inspector-Core'  with: [ spec requires: #('Tugrik') ]]
