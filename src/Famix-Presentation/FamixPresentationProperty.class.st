"
Description
--------------------

I represent a property of a Moose Entity. 

I should be declared class side of Moose entities with the <famixPresentationPreperty> pragma.

I am helpful to display information in UIs.

Examples
--------------------

```smalltalk
deadItemProperty
	<famixPresentationProperty>
	^ FamixPresentationProperty label: 'Dead Item' color: (MDLColor tint: #red code: '600') condition: #isDead
 ```

Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	color:				<aColor> 			A color to represent the state of an entity with this property.
	condition:		<aValuable>		An optional valuable to know if this property applies to a specific entity.
	label:				<aString>			A label for the property.

"
Class {
	#name : #FamixPresentationProperty,
	#superclass : #Object,
	#instVars : [
		'color',
		'label',
		'condition'
	],
	#category : #'Famix-Presentation-Helpers'
}

{ #category : #initialize }
FamixPresentationProperty class >> label: aLabel color: aColor [
	^ self new
		label: aLabel;
		color: aColor;
		yourself
]

{ #category : #initialize }
FamixPresentationProperty class >> label: aLabel color: aColor condition: aValuable [
	^ (self label: aLabel color: aColor)
		condition: aValuable;
		yourself
]

{ #category : #accessing }
FamixPresentationProperty >> color [
	^ color
]

{ #category : #accessing }
FamixPresentationProperty >> color: anObject [
	color := anObject
]

{ #category : #accessing }
FamixPresentationProperty >> condition [
	^ condition
]

{ #category : #accessing }
FamixPresentationProperty >> condition: aValuable [
	condition := aValuable
]

{ #category : #testing }
FamixPresentationProperty >> hasCondition [
	^ self condition isNotNil
]

{ #category : #testing }
FamixPresentationProperty >> isValidFor: anEntity [
	^ self condition value: anEntity
]

{ #category : #accessing }
FamixPresentationProperty >> label [
	^ label
]

{ #category : #accessing }
FamixPresentationProperty >> label: anObject [
	label := anObject
]

{ #category : #printing }
FamixPresentationProperty >> printOn: aStream [
	super printOn: aStream.
	aStream
		space;
		nextPut: $(;
		nextPutAll: self label;
		nextPut: $)
]
