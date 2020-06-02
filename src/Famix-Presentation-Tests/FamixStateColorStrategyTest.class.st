"
A SYNStateColorStrategyTest is a test class for testing the behavior of SYNStateColorStrategy
"
Class {
	#name : #FamixStateColorStrategyTest,
	#superclass : #FamixColorStrategyTest,
	#category : #'Famix-Presentation-Tests'
}

{ #category : #helpers }
FamixStateColorStrategyTest >> actualClass [
	^ FamixStateColorStrategy
]

{ #category : #tests }
FamixStateColorStrategyTest >> testColorFor [
	| strat entity |
	strat := self actualClass new.
	entity := self newMockEntity.
	entity stub isDead willReturn: true.
	self assert: (strat colorFor: entity) equals: (MDLColor tint: #red code: '600')
]

{ #category : #tests }
FamixStateColorStrategyTest >> testColorForEntityRaiseErrorIfNotState [
	| strat entity |
	strat := self actualClass new.
	entity := self newMockEntity.
	entity stub presentationProperties willReturn: #().
	self should: [ strat colorFor: entity ] raise: FamixNoColorFound
]

{ #category : #tests }
FamixStateColorStrategyTest >> testEquals [
	| strat strat2 |
	strat := self actualClass new.
	strat2 := self actualClass new.
	self assert: strat equals: strat.
	self assert: strat equals: strat2.
	self deny: strat identicalTo: strat2
]

{ #category : #tests }
FamixStateColorStrategyTest >> testHash [
	| strat strat2 |
	strat := self actualClass new.
	strat2 := self actualClass new.
	self assert: strat hash equals: strat hash.
	self assert: strat hash equals: strat2 hash
]
