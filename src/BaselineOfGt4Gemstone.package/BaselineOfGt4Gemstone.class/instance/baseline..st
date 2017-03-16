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
		   package: 'GT-Debugger';
			package: 'GT-Inspector';
			package: 'Glamour-Core';
			package: 'Glamour-FastTable';
			package: 'Glamour-Morphic-Renderer';
			package: 'GtGs-BareProxy-Pharo';
			package: 'GtGs-Gemstone-Stubs';
			package: 'GtGs-Gemstone-Stubs-Basic';
			package: 'GtGs-Inspector-SystemExtensions';
			package: 'GtGs-Inspector-Core'  with: [ spec requires: #('GtGs-Gemstone-Stubs' 'GtGs-BareProxy-Pharo' 'Ston' 'GemStoneGCI' 'Tode' 'TodeClient') ];
			package: 'GtGs-Debugger-Core'  with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Editor-Core' with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Editor-Pharo-Core' with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Inspector-Extensions'  with: [ spec requires: #('GtGs-Gemstone-Stubs' 'GtGs-Inspector-Core') ];
			package: 'GtGs-Inspector-Pharo-Core'  with: [ spec requires: #('GtGs-Inspector-Core' 'Glamour-FastTable' 'Glamour-Core') ];
			package: 'GtGs-Playground-Pharo-Core'  with: [ spec requires: #('GtGs-Inspector-Pharo-Core') ];
			package: 'GtGs-Debugger-Pharo-Core'  with: [ spec requires: #('GtGs-Inspector-Pharo-Core') ];
			package: 'GtGs-Common-Resources-Tests';
			package: 'GtGs-Inspector-Pharo-Tests' with: [ spec requires: #('GtGs-Inspector-Pharo-Core' 'GtGs-Common-Resources-Tests') ];
			package: 'GtGs-Debugger-Pharo-Tests' with: [ spec requires: #('GtGs-Debugger-Core' 'GtGs-Common-Resources-Tests') ];
			package: 'GtGs-Examples-AddressBook-Model';
			package: 'GtGs-Examples-AddressBook-Extensions-Pharo' with: [ spec requires: #('GtGs-Examples-AddressBook-Model') ].
			
		spec
			group: 'Core'
				with: #('GtGs-Gemstone-Stubs' 'GtGs-Gemstone-Stubs-Basic' 'GtGs-Inspector-Core' 'GtGs-Debugger-Core' 'GtGs-Editor-Core' 'GtGs-Inspector-Extensions' 'GtGs-Inspector-Pharo-Core' 'GtGs-Playground-Pharo-Core' 'GtGs-Debugger-Pharo-Core' 'GtGs-Editor-Pharo-Core' 'GtGs-BareProxy-Pharo');
			group: 'Tests'
				with: #('GtGs-Common-Resources-Tests' 'GtGs-Inspector-Pharo-Tests' 'GtGs-Debugger-Pharo-Tests');
			group: 'Examples'
				with: #('GtGs-Examples-AddressBook-Model' 'GtGs-Examples-AddressBook-Extensions-Pharo');
			group: 'Pharo'
				with: #('GT-Debugger' 'GT-Inspector' 'Glamour-FastTable' 'Glamour-Core' 'Glamour-Morphic-Renderer');
			group: 'default' with: #('Core' 'Tests' 'Examples' 'Pharo') ].
		
	 spec for: #'gemstone' do: [

		spec
			baseline: 'Tode'
         		with: [ 
              spec
					loads: #('Topez-Server-3x-DebugTools');
                repository: 'github://dalehenrich/tode:dev/repository' ].

		spec
			package: 'GtGs-Inspector-Core' with: [ spec requires: #('Tode') ];
			package: 'GtGs-Editor-Core' with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Inspector-SystemExtensions';
			package: 'GtGs-Inspector-Extensions'  with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Debugger-Core'  with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Common-Resources-Tests';
			package: 'GtGs-Inspector-Gemstone-Tests' with: [ spec requires: #('GtGs-Inspector-Core' 'GtGs-Common-Resources-Tests') ];
			package: 'GtGs-Examples-AddressBook-Model'.
			
		spec
			group: 'Core'
				with: #('GtGs-Inspector-Core' 'GtGs-Editor-Core' 'GtGs-Inspector-Extensions' 'GtGs-Debugger-Core');
			group: 'Tests'
				with: #('GtGs-Inspector-Gemstone-Tests' 'GtGs-Common-Resources-Tests');
			group: 'Examples'
				with: #('GtGs-Examples-AddressBook-Model');
			group: 'default' with: #('Core' 'Tests' 'Examples')  ]