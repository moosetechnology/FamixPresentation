"
A SYNAbstractColorStrategyTest is a test class for testing the behavior of SYNAbstractColorStrategy
"
Class {
	#name : #FamixColorStrategyTest,
	#superclass : #TestCase,
	#category : #'Famix-Presentation-Tests'
}

{ #category : #testing }
FamixColorStrategyTest class >> isAbstract [
	^ self = FamixColorStrategyTest
]

{ #category : #testing }
FamixColorStrategyTest class >> shouldInheritSelectors [
	^ true
]

{ #category : #helpers }
FamixColorStrategyTest >> actualClass [
	^ self subclassResponsibility
]

{ #category : #helpers }
FamixColorStrategyTest >> newMockEntity [
	^ MooseEntity new
]

{ #category : #tests }
FamixColorStrategyTest >> testColorFor [
	self subclassResponsibility
]

{ #category : #tests }
FamixColorStrategyTest >> testEquals [
	self subclassResponsibility
]

{ #category : #tests }
FamixColorStrategyTest >> testFallbackStrategy [
	| strat |
	strat := self actualClass new.
	strat := strat fallbackStrategy: self actualClass new.
	self assert: strat strategies size equals: 2
]

{ #category : #tests }
FamixColorStrategyTest >> testHash [
	self subclassResponsibility
]
