"
Description
--------------------

I am an error raised by a FamixColorStrategy when no color can be computed for a given entity.
Simplest way to fix this problem is to add a FamixSimpleColorStrategy as fallback.
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	entity:		<aMooseEntity>		The entity for which we did not found any color.

"
Class {
	#name : #FamixNoColorFound,
	#superclass : #Exception,
	#instVars : [
		'entity'
	],
	#category : #'Famix-Presentation-Exceptions'
}

{ #category : #exceptioninstantiator }
FamixNoColorFound class >> signalEntity: anEntity [
	^ self new
		entity: anEntity;
		signal
]

{ #category : #accessing }
FamixNoColorFound >> entity [
	^ entity
]

{ #category : #accessing }
FamixNoColorFound >> entity: anObject [
	entity := anObject
]

{ #category : #accessing }
FamixNoColorFound >> messageText [
	^ 'No color found for ' , entity asString
]
