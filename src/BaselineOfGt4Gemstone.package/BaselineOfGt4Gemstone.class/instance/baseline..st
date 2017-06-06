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
                    'github://GsDevKit/GsDevKit_home:dev/shared/repos/todeClient' ].
		spec
        configuration: 'Beacon' 
			 with: [ 
        		  spec
                className: 'ConfigurationOfBeacon';
                versionString: #'development';
                repository: 'http://www.smalltalkhub.com/mc/Pharo/Beacon/main' ].

		spec
			package: 'GtGs-Gemstone-Stubs';
			package: 'GtGs-Gemstone-Stubs-Basic';
			package: 'GtGs-ClientGemstone-Core' with: [ spec requires: #('GtGs-Gemstone-Stubs' 'Ston' 'GemStoneGCI' 'Tode' 'TodeClient') ];
			package: 'GtGs-ClientGemstone-Topez' with: [ spec requires: #('GtGs-ClientGemstone-Core') ];
			package: 'GtGs-ClientPharo-Core' with: [ spec requires: #('GtGs-ClientGemstone-Core') ];
			package: 'GtGs-BareProxy-Pharo' with: [ spec requires: #('GtGs-ClientPharo-Core') ];
			package: 'GtGs-Inspector-Core'  with: [ spec requires: #('GtGs-ClientGemstone-Core') ];
			package: 'GtGs-Inspector-Extensions'  with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Inspector-SystemExtensions' with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Debugger-Core'  with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Inspector-Pharo-Core'  with: [ spec requires: #('GtGs-ClientPharo-Core' 'GtGs-Inspector-Core') ];
			package: 'GtGs-Editor-Core' with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Editor-Pharo-Core' with: [ spec requires: #('GtGs-Editor-Core' 'GtGs-Inspector-Pharo-Core') ];
			package: 'GtGs-Playground-Pharo-Core'  with: [ spec requires: #('GtGs-Inspector-Pharo-Core') ];
			package: 'GtGs-Spotter-Gemstone-Core' with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Spotter-Pharo-Core' with: [ spec requires: #('GtGs-Inspector-Pharo-Core') ];
			package: 'GtGs-Debugger-Pharo-Core'  with: [ spec requires: #('GtGs-Debugger-Core' 'GtGs-Inspector-Pharo-Core') ];
			package: 'GtGs-Inspector-Roassal-Core';
			package: 'GtGs-Inspector-Roassal-Pharo';
			package: 'GtGs-Pharo-Tools' with: [ spec requires: #('Beacon') ];
			package: 'GtGs-Common-Resources-Tests';
			package: 'GtGs-Inspector-Pharo-Tests' with: [ spec requires: #('GtGs-Inspector-Pharo-Core' 'GtGs-Common-Resources-Tests') ];
			package: 'GtGs-Debugger-Pharo-Tests' with: [ spec requires: #('GtGs-Debugger-Core' 'GtGs-Common-Resources-Tests') ];
			package: 'GtGs-Examples-AddressBook-Model';
			package: 'GtGs-Examples-AddressBook-Extensions-Pharo' with: [ spec requires: #('GtGs-Examples-AddressBook-Model') ].
			
		spec
			group: 'Core'
				with: #('GtGs-Gemstone-Stubs' 'GtGs-Gemstone-Stubs-Basic' 'GtGs-ClientGemstone-Core' 'GtGs-ClientPharo-Core' 'GtGs-ClientGemstone-Topez'  'GtGs-Inspector-Core'  'GtGs-Debugger-Core' 'GtGs-Editor-Core' 'GtGs-Inspector-Extensions' 'GtGs-Spotter-Gemstone-Core' 'GtGs-Inspector-Pharo-Core' 'GtGs-Playground-Pharo-Core' 'GtGs-Debugger-Pharo-Core' 'GtGs-Editor-Pharo-Core' 'GtGs-Spotter-Pharo-Core' 'GtGs-BareProxy-Pharo' 'GtGs-Pharo-Tools');
			group: 'Tests'
				with: #('GtGs-Common-Resources-Tests' 'GtGs-Inspector-Pharo-Tests' 'GtGs-Debugger-Pharo-Tests');
			group: 'Examples'
				with: #('GtGs-Examples-AddressBook-Model' 'GtGs-Examples-AddressBook-Extensions-Pharo');
			group: 'default' with: #('Core' 'Tests' 'Examples') ].
		
	 spec for: #'pharo5.x' do: [
		spec 
		   package: 'GT-Debugger';
			package: 'GT-Inspector';
			package: 'Glamour-Core';
			package: 'Glamour-FastTable';
			package: 'Glamour-Morphic-Renderer';
			
			package: 'GtGs-Inspector-Core' with: [ 
				spec requires: #('PharoExtensions') ].
		spec 
			group: 'PharoExtensions'
				with: #('GT-Debugger' 'GT-Inspector' 'Glamour-FastTable' 'Glamour-Core' 'Glamour-Morphic-Renderer').
	].
	
	 spec for: #'gemstone' do: [

		spec
			baseline: 'Tode'
         		with: [ 
              spec
					loads: #('Topez-Server-3x-DebugTools');
                repository: 'github://dalehenrich/tode:dev/repository' ].

		spec
			package: 'GtGs-ClientGemstone-Core' with: [ spec requires: #('Tode') ];
			package: 'GtGs-ClientGemstone-Topez' with: [ spec requires: #('GtGs-ClientGemstone-Core') ];
			package: 'GtGs-Inspector-Core' with: [ spec requires: #('GtGs-ClientGemstone-Core') ];
			package: 'GtGs-Inspector-SystemExtensions' with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Inspector-Extensions'  with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Spotter-Gemstone-Core' with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Editor-Core' with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Debugger-Core'  with: [ spec requires: #('GtGs-Inspector-Core') ];
			package: 'GtGs-Inspector-Roassal-Core';
			package: 'GtGs-Common-Resources-Tests';
			package: 'GtGs-Inspector-Gemstone-Tests' with: [ spec requires: #('GtGs-Inspector-Core' 'GtGs-Common-Resources-Tests') ];
			package: 'GtGs-Examples-AddressBook-Model'.
			
		spec
			group: 'Core'
				with: #('GtGs-ClientGemstone-Core' 'GtGs-ClientGemstone-Topez' 'GtGs-Inspector-Core' 'GtGs-Editor-Core' 'GtGs-Inspector-Extensions' 'GtGs-Debugger-Core' 'GtGs-Spotter-Gemstone-Core' 'GtGs-Inspector-Roassal-Core');
			group: 'Tests'
				with: #('GtGs-Inspector-Gemstone-Tests' 'GtGs-Common-Resources-Tests');
			group: 'Examples'
				with: #('GtGs-Examples-AddressBook-Model');
			group: 'default' with: #('Core' 'Tests' 'Examples')  ]
