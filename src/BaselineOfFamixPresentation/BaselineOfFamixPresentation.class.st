Class {
	#name : #BaselineOfFamixPresentation,
	#superclass : #BaselineOf,
	#category : #BaselineOfFamixPresentation
}

{ #category : #baseline }
BaselineOfFamixPresentation >> baseline: spec [

	<baseline>
	spec for: #common do: [ "Dependencies"
		self
			famix: spec;
			famixTagging: spec;
			famixReplication: spec;
			mooseCritics: spec;
			materialColor: spec.

		"Packages"
		spec
			package: 'Famix-Presentation' with: [ 
				spec requires:
						#( 'MaterialColors' 'FamixTagging' 'FamixReplication' 'Famix' 'MooseCritics' ) ];
			package: 'Famix-Presentation-Tests'
			with: [ spec requires: #( 'Famix-Presentation' ) ].

		"Groups"
		spec
			group: 'Core' with: #( 'Famix-Presentation' );
			group: 'Tests' with: #( 'Famix-Presentation-Tests' ) ]
]

{ #category : #dependencies }
BaselineOfFamixPresentation >> famix: spec [

	spec
		baseline: 'Famix'
		with: [ 
		spec repository: 'github://moosetechnology/Famix:development/src' ]
]

{ #category : #dependencies }
BaselineOfFamixPresentation >> famixReplication: spec [

	spec
		baseline: 'FamixReplication'
		with: [ 
		spec repository: 'github://moosetechnology/FamixReplication' ]
]

{ #category : #dependencies }
BaselineOfFamixPresentation >> famixTagging: spec [

	spec
		baseline: 'FamixTagging'
		with: [ 
		spec repository: 'github://moosetechnology/FamixTagging:v1.x.x/src' ]
]

{ #category : #dependencies }
BaselineOfFamixPresentation >> materialColor: spec [

	spec baseline: 'MaterialColors' with: [ 
		spec
			loads: 'Core';
			repository: 'github://DuneSt/MaterialColors:v2.x.x/src' ]
]

{ #category : #dependencies }
BaselineOfFamixPresentation >> mooseCritics: spec [

	spec
		baseline: 'MooseCritics'
		with: [ 
		spec repository: 'github://moosetechnology/Moose-Critics/src' ]
]

{ #category : #accessing }
BaselineOfFamixPresentation >> projectClass [

	^ MetacelloCypressBaselineProject
]
