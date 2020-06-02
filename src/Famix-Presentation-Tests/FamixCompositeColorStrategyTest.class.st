"
A SYNCompositeColorStrategyTest is a test class for testing the behavior of SYNCompositeColorStrategy
"
Class {
	#name : #FamixCompositeColorStrategyTest,
	#superclass : #FamixColorStrategyTest,
	#category : #'Famix-Presentation-Tests'
}

{ #category : #helpers }
FamixCompositeColorStrategyTest >> actualClass [
	^ FamixCompositeColorStrategy
]

{ #category : #tests }
FamixCompositeColorStrategyTest >> testColorFor [
	| strat entity |
	strat := FamixStateColorStrategy new fallbackStrategy: (FamixSimpleColorStrategy color: MDLColor teal).
	entity := self newMockEntity.
	entity stub presentationProperties willReturn: #().
	self assert: (strat colorFor: entity) equals: MDLColor teal
]

{ #category : #tests }
FamixCompositeColorStrategyTest >> testEquals [
	| strat strat2 |
	strat := FamixStateColorStrategy new fallbackStrategy: (FamixSimpleColorStrategy color: MDLColor teal).
	strat2 := FamixStateColorStrategy new fallbackStrategy: (FamixSimpleColorStrategy color: MDLColor teal).
	self assert: strat equals: strat.
	self assert: strat equals: strat2.
	self deny: strat identicalTo: strat2.
	strat := FamixStateColorStrategy new fallbackStrategy: (FamixSimpleColorStrategy color: MDLColor orange).
	self deny: strat equals: strat2.
	self deny: strat identicalTo: strat2
]

{ #category : #tests }
FamixCompositeColorStrategyTest >> testFallbackStrategy [
	| strat |
	strat := self actualClass new.
	strat fallbackStrategy: (FamixSimpleColorStrategy color: MDLColor teal).
	self assert: strat strategies size equals: 1.
	strat fallbackStrategy: FamixKindColorStrategy new.
	self assert: strat strategies size equals: 2
]

{ #category : #tests }
FamixCompositeColorStrategyTest >> testHash [
	| strat strat2 |
	strat := FamixStateColorStrategy new fallbackStrategy: (FamixSimpleColorStrategy color: MDLColor teal).
	strat2 := FamixStateColorStrategy new fallbackStrategy: (FamixSimpleColorStrategy color: MDLColor teal).
	self assert: strat hash equals: strat hash.
	self assert: strat hash equals: strat2 hash.
	strat := FamixStateColorStrategy new fallbackStrategy: (FamixSimpleColorStrategy color: MDLColor orange).
	self deny: strat hash equals: strat2 hash
]
