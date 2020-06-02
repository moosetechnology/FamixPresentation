"
A SYNEntityKindColorStrategyTest is a test class for testing the behavior of SYNEntityKindColorStrategy
"
Class {
	#name : #FamixKindColorStrategyTest,
	#superclass : #FamixColorStrategyTest,
	#category : #'Famix-Presentation-Tests'
}

{ #category : #helpers }
FamixKindColorStrategyTest >> actualClass [
	^ FamixKindColorStrategy
]

{ #category : #tests }
FamixKindColorStrategyTest >> testColorFor [
	self assert: (self actualClass new colorFor: self newMockEntity) equals: CPPSType color
]

{ #category : #tests }
FamixKindColorStrategyTest >> testEquals [
	| strat strat2 |
	strat := self actualClass new.
	strat2 := self actualClass new.
	self assert: strat equals: strat.
	self assert: strat equals: strat2.
	self deny: strat identicalTo: strat2
]

{ #category : #tests }
FamixKindColorStrategyTest >> testHash [
	| strat strat2 |
	strat := self actualClass new.
	strat2 := self actualClass new.
	self assert: strat hash equals: strat hash.
	self assert: strat hash equals: strat2 hash
]
