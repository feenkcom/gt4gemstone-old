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
			package: 'GtGs-Inspector-Pharo-Core'  with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Inspector-Tests' with: [ spec requires: #('GtGs-Inspector-Pharo-Core') ];
			package: 'GtGs-Test-AddressBook-Model';
			package: 'GtGs-Test-AddressBook-Extensions-Pharo' with: [ spec requires: #('GtGs-Test-AddressBook-Model') ].
			
		spec
			group: 'Core'
				with: #('GtGs-Gemstone-Stubs' 'GtGs-Inspector-Core' 'GtGs-Inspector-Pharo-Core');
			group: 'Tests'
				with: #('GtGs-Inspector-Tests' 'GtGs-Test-AddressBook-Model' 'GtGs-Test-AddressBook-Extensions-Pharo');
			group: 'default' with: #('Core' 'Tests') ].
		
	 spec for: #'gemstone' do: [
		spec
        baseline: 'Tugrik'
          with: [ 
              spec
                loads: 'default';
                repository: 'github://dalehenrich/Tugrik:master/repository' ].
		spec
			package: 'GtGs-Inspector-Core'  with: [ spec requires: #('Tugrik') ];
			package: 'GtGs-Inspector-Tests' with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Test-AddressBook-Model'.
			
		spec
			group: 'Core'
				with: #('GtGs-Inspector-Core');
			group: 'Tests'
				with: #('GtGs-Inspector-Core' 'GtGs-Test-AddressBook-Model');
			group: 'default' with: #('Core' 'Tests')  ]