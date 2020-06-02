"
Description
--------------------

I am an abstract class to manage a strategy of color representation for an entity. 

Public API and Key Messages
--------------------

- #colorFor: 			Return the color for the entity given as parameter
- #fallbackStrategy: 	In case a strategy can not return a color, we can add fallback strategies
 
Examples
--------------------

	entity := MooseEntity allSubInstances detect: #isContainer.

	strat1 := (FamixSimpleColorStrategy color: Color white).
	strat2 := FamixKindColorStrategy new.
	strat3 := FamixStateColorStrategy new.
	strat4 := FamixTagColorStrategy colorForMultipleTag: Color black.

	strat4 colorForEntity: entity.

	strat := strat3 fallbackStrategy: strat2.
	strat colorForEntity: entity.

	strat := strat4 fallbackStrategy: strat1.
	strat colorForEntity: entity
"
Class {
	#name : #FamixColorStrategy,
	#superclass : #Object,
	#classInstVars : [
		'default'
	],
	#category : #'Famix-Presentation-Colors'
}

{ #category : #accessing }
FamixColorStrategy class >> default [
	^ default ifNil: [ default := self newDefaultStrategy ]
]

{ #category : #accessing }
FamixColorStrategy class >> defaultBackgroundColor [
	^ MDLColor orange lighter alpha: 0.6
]

{ #category : #accessing }
FamixColorStrategy class >> defaultStrategyWithFallback [
	^ self default fallbackStrategy: (FamixSimpleColorStrategy color: self defaultBackgroundColor)
]

{ #category : #accessing }
FamixColorStrategy class >> label [
	^ self subclassResponsibility
]

{ #category : #'instance creation' }
FamixColorStrategy class >> newDefaultStrategy [
	^ self subclassResponsibility
]

{ #category : #'instance creation' }
FamixColorStrategy class >> stateThenKindStrategy [
	^ FamixStateColorStrategy default fallbackStrategy: FamixKindColorStrategy default
]

{ #category : #comparing }
FamixColorStrategy >> = anObject [
	self == anObject ifTrue: [ ^ true ].
	^ self class = anObject class
]

{ #category : #accessing }
FamixColorStrategy >> colorFor: anEntity [
	^ self subclassResponsibility
]

{ #category : #accessing }
FamixColorStrategy >> errorFor: anEntity [
	FamixNoColorFound signalEntity: anEntity
]

{ #category : #adding }
FamixColorStrategy >> fallbackStrategy: aStrategy [
	^ FamixCompositeColorStrategy new
		fallbackStrategy: self;
		fallbackStrategy: aStrategy;
		yourself
]

{ #category : #comparing }
FamixColorStrategy >> hash [
	^ self className hash
]

{ #category : #accessing }
FamixColorStrategy >> label [
	^ self class label
]
