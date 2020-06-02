Class {
	#name : #FamixPresentationTest,
	#superclass : #TestCase,
	#category : #'Famix-Presentation-Tests'
}

{ #category : #asserting }
FamixPresentationTest >> assertAllDisplayableEntitiesUnderstand: selector [
	MooseEntity allSubclasses
		select: #isDisplayable
		thenDo: [ :each | 
			self
				shouldnt: [ selector value: each ]
				raise: SubclassResponsibility
				description: each printString , ' should implement the method #' , selector , '.' ]
]

{ #category : #tests }
FamixPresentationTest >> testAsReadableFormat [
	self
		assert:
			(DateAndTime
				year: 2020
				month: 5
				day: 25
				hour: 12
				minute: 55
				second: 30) asReadableFormat
		equals: 'Mon, 25 May 2020 12:55:30'
]

{ #category : #tests }
FamixPresentationTest >> testFamixDisplayableEntitesUnderstantColor [
	self assertAllDisplayableEntitiesUnderstand: #color
]

{ #category : #tests }
FamixPresentationTest >> testFamixDisplayableEntitesUnderstantEnglishName [
	self assertAllDisplayableEntitiesUnderstand: #englishName
]

{ #category : #tests }
FamixPresentationTest >> testFamixDisplayableEntitesUnderstantFrenchName [
	self assertAllDisplayableEntitiesUnderstand: #frenchName
]

{ #category : #tests }
FamixPresentationTest >> testFamixDisplayableEntitesUnderstantInitialToDisplay [
	self assertAllDisplayableEntitiesUnderstand: #kindAbbreviation
]
