baseline
baseline: spec
	<baseline>
	spec for: #'pharo' do: [
		spec
        baseline: 'Ston'
          with: [ 
              spec
                loads: 'Core';
                repository: 'github://GsDevKit/ston:v0.9.4/repository' ];
        baseline: 'GemStoneGCI'
          with: [ 
              spec
                loads: #('Core');
                repository: 'github://GsDevKit/GemStone-GCI:master/repository' ];
        baseline: 'Tode'
          with: [ 
              spec
                loads: #('Minimal Client' 'Minimal Tests');
                repository: 'github://dalehenrich/tode:dev/repository' ];
        baseline: 'TodeClient'
          with: [ 
              spec
                loads: #('GsDevKitClient' 'GsDevKitClient Tests');
                repository:
                    'github://GsDevKit/GsDevKit_home:dev/shared/repos/TodeClient' ].

		spec 
			package: 'GtGs-Gemstone-Stubs';
			package: 'GtGs-Inspector-Core'  with: [ spec requires: #('GtGs-Gemstone-Stubs' 'Ston' 'GemStoneGCI' 'Tode' 'TodeClient') ];
			package: 'GtGs-Inspector-Extensions'  with: [ spec requires: #('GtGs-Gemstone-Stubs' 'GtGs-Inspector-Core') ];
			package: 'GtGs-Inspector-Pharo-Core'  with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Inspector-Tests' with: [ spec requires: #('GtGs-Inspector-Pharo-Core') ];
			package: 'GtGs-Examples-AddressBook-Model';
			package: 'GtGs-Examples-AddressBook-Extensions-Pharo' with: [ spec requires: #('GtGs-Examples-AddressBook-Model') ].
			
		spec
			group: 'Core'
				with: #('GtGs-Gemstone-Stubs' 'GtGs-Inspector-Core' 'GtGs-Inspector-Extensions' 'GtGs-Inspector-Pharo-Core');
			group: 'Tests'
				with: #('GtGs-Inspector-Tests');
			group: 'Examples'
				with: #('GtGs-Examples-AddressBook-Model' 'GtGs-Examples-AddressBook-Extensions-Pharo');
			group: 'default' with: #('Core' 'Tests' 'Examples') ].
		
	 spec for: #'gemstone' do: [

		spec
			package: 'GtGs-Inspector-Core';
			package: 'GtGs-Inspector-Tests' with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Inspector-Extensions'  with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Examples-AddressBook-Model'.
			
		spec
			group: 'Core'
				with: #('GtGs-Inspector-Core' 'GtGs-Inspector-Extensions');
			group: 'Tests'
				with: #('GtGs-Inspector-Tests');
			group: 'Examples'
				with: #('GtGs-Examples-AddressBook-Model');
			group: 'default' with: #('Core' 'Tests' 'Examples')  ]