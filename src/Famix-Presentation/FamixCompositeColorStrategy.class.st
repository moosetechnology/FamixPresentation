"
Description
--------------------

I am a composite strategy. I'll ask the color of the entity to the first strategy and if there is no answer I'll ask to the next etc.

Examples
--------------------

	strat1 := (FamixSimpleColorStrategy color: Color white).
	strat2 := FamixKindColorStrategy new.

	(strat1 fallbackStrategy: strat2) colorForEntity: entity.

	(FamixCompositoColorStrategy new addStrategy: strat1; addStrategy: strat2; yourself) colorForEntity: entity.
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	strategies:		<aCollection>	Collection of strategies to apply to an entity to get its color

"
Class {
	#name : #FamixCompositeColorStrategy,
	#superclass : #FamixColorStrategy,
	#instVars : [
		'strategies'
	],
	#category : #'Famix-Presentation-Colors'
}

{ #category : #accessing }
FamixCompositeColorStrategy class >> label [
	^ 'Composite strategy'
]

{ #category : #comparing }
FamixCompositeColorStrategy >> = anObject [
	^ super = anObject and: [ strategies = anObject strategies ]
]

{ #category : #accessing }
FamixCompositeColorStrategy >> colorFor: anEntity [
	self strategies
		do: [ :each | 
			([ each colorFor: anEntity ]
				on: FamixNoColorFound
				do: [ nil ]) ifNotNil: [ :color | ^ color ] ].
	self errorFor: anEntity
]

{ #category : #adding }
FamixCompositeColorStrategy >> fallbackStrategy: aStrategy [
	self strategies add: aStrategy
]

{ #category : #comparing }
FamixCompositeColorStrategy >> hash [
	^ super hash bitXor: strategies hash
]

{ #category : #initialization }
FamixCompositeColorStrategy >> initialize [
	super initialize.
	self strategies: OrderedCollection new
]

{ #category : #accessing }
FamixCompositeColorStrategy >> label [
	^ self strategies ifEmpty: [ super label ] ifNotEmpty: [ :strats | strats anyOne label ]
]

{ #category : #accessing }
FamixCompositeColorStrategy >> strategies [
	^ strategies
]

{ #category : #accessing }
FamixCompositeColorStrategy >> strategies: anObject [
	strategies := anObject
]
