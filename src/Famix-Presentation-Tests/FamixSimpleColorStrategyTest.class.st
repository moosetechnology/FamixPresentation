"
A SYNDefaultColorStrategyTest is a test class for testing the behavior of SYNDefaultColorStrategy
"
Class {
	#name : #FamixSimpleColorStrategyTest,
	#superclass : #FamixColorStrategyTest,
	#category : #'Famix-Presentation-Tests'
}

{ #category : #helpers }
FamixSimpleColorStrategyTest >> actualClass [
	^ FamixSimpleColorStrategy
]

{ #category : #tests }
FamixSimpleColorStrategyTest >> testColorFor [
	| strat |
	strat := self actualClass color: MDLColor teal.
	self assert: (strat colorFor: self newMockEntity) equals: MDLColor teal
]

{ #category : #tests }
FamixSimpleColorStrategyTest >> testEquals [
	| strat strat2 |
	strat := self actualClass color: MDLColor teal.
	strat2 := self actualClass color: MDLColor teal.
	self assert: strat equals: strat.
	self assert: strat equals: strat2.
	self deny: strat identicalTo: strat2.
	strat := self actualClass color: MDLColor orange.
	self deny: strat equals: strat2.
	self deny: strat identicalTo: strat2
]

{ #category : #tests }
FamixSimpleColorStrategyTest >> testHash [
	| strat strat2 |
	strat := self actualClass color: MDLColor teal.
	strat2 := self actualClass color: MDLColor teal.
	self assert: strat hash equals: strat hash.
	self assert: strat hash equals: strat2 hash.
	strat2 := self actualClass color: MDLColor orange.
	self deny: strat hash equals: strat2 hash
]
