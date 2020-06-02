Class {
	#name : #FamixTestColorEntity,
	#superclass : #MooseEntity,
	#traits : 'FamixTType',
	#classTraits : 'FamixTType classTrait',
	#category : #'Famix-Presentation-Tests'
}

{ #category : #meta }
FamixTestColorEntity class >> annotation [
	<FMClass: #Type super: #FamixPresentationTest>
	<package: #'Famix-Presentation-Tests'>
]

{ #category : #accessing }
FamixTestColorEntity class >> color [
	^ MDLColor green
]
