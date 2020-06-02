"
A SYNTagColorStrategyTest is a test class for testing the behavior of SYNTagColorStrategy
"
Class {
	#name : #FamixTagColorStrategyTest,
	#superclass : #FamixColorStrategyTest,
	#category : #'Famix-Presentation-Tests'
}

{ #category : #helpers }
FamixTagColorStrategyTest >> actualClass [
	^ FamixTagColorStrategy
]

{ #category : #tests }
FamixTagColorStrategyTest >> testColorFor [
	| entity tag |
	entity := self newMockEntity.
	tag := FamixTag new color: MDLColor teal.
	entity stub tags willReturn: {tag}.
	self assert: (self actualClass new colorFor: entity) equals: tag color
]

{ #category : #tests }
FamixTagColorStrategyTest >> testColorForEntityWithMultipleTag [
	| strat entity |
	entity := self newMockEntity.
	strat := self actualClass colorForMultipleTag: MDLColor teal.
	entity stub tags
		willReturn:
			{(FamixTag new).
			(FamixTag new)}.
	self assert: (strat colorFor: entity) equals: MDLColor teal
]

{ #category : #tests }
FamixTagColorStrategyTest >> testColorForEntityWithoutTag [
	| entity |
	entity := self newMockEntity.
	self should: [ self actualClass new colorFor: entity ] raise: FamixNoColorFound
]

{ #category : #tests }
FamixTagColorStrategyTest >> testEquals [
	| strat strat2 |
	strat := self actualClass colorForMultipleTag: MDLColor teal.
	strat2 := self actualClass colorForMultipleTag: MDLColor teal.
	self assert: strat equals: strat.
	self assert: strat equals: strat2.
	self deny: strat identicalTo: strat2.
	strat := self actualClass colorForMultipleTag: MDLColor orange.
	self deny: strat equals: strat2.
	self deny: strat identicalTo: strat2
]

{ #category : #tests }
FamixTagColorStrategyTest >> testHash [
	| strat strat2 |
	strat := self actualClass colorForMultipleTag: MDLColor teal.
	strat2 := self actualClass colorForMultipleTag: MDLColor teal.
	self assert: strat hash equals: strat hash.
	self assert: strat hash equals: strat2 hash.
	strat2 := self actualClass colorForMultipleTag: MDLColor orange.
	self deny: strat hash equals: strat2 hash
]
