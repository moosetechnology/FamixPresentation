Class {
	#name : #BaselineOfFamixPresentation,
	#superclass : #BaselineOf,
	#category : #BaselineOfFamixPresentation
}

{ #category : #baseline }
BaselineOfFamixPresentation >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ "Dependencies"
			self
				famixTagging: spec;
				materialColor: spec.

			"Packages"
			spec
				package: 'Famix-Presentation' with: [ spec requires: #('MaterialColors' 'FamixTagging') ];
				package: 'Famix-Presentation-Tests' with: [ spec requires: #('Famix-Presentation') ].

			"Groups"
			spec
				group: 'Core' with: #('Famix-Presentation');
				group: 'Tests' with: #('Famix-Presentation-Tests') ]
]

{ #category : #dependencies }
BaselineOfFamixPresentation >> famixTagging: spec [
	spec baseline: 'FamixTagging' with: [ spec repository: 'github://moosetechnology/FamixTagging:v1.x.x/src' ]
]

{ #category : #dependencies }
BaselineOfFamixPresentation >> materialColor: spec [
	spec
		baseline: 'MaterialColors'
		with: [ spec
				loads: 'Core';
				repository: 'github://DuneSt/MaterialColors:v2.x.x/src' ]
]

{ #category : #accessing }
BaselineOfFamixPresentation >> projectClass [
	^ MetacelloCypressBaselineProject
]
