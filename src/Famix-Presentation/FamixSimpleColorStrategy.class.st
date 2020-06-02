"
Description
--------------------

I am a simple strategy always returning the same color.

Examples
--------------------

	FamixSimpleColorStrategy color: Color white
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	color:		<aColor>	Color to return

"
Class {
	#name : #FamixSimpleColorStrategy,
	#superclass : #FamixColorStrategy,
	#instVars : [
		'color'
	],
	#category : #'Famix-Presentation-Colors'
}

{ #category : #'instance creation' }
FamixSimpleColorStrategy class >> color: aColor [
	^ self new
		color: aColor;
		yourself
]

{ #category : #accessing }
FamixSimpleColorStrategy class >> label [
	^ 'Default color'
]

{ #category : #comparing }
FamixSimpleColorStrategy >> = anObject [
	^ super = anObject and: [ color = anObject color ]
]

{ #category : #accessing }
FamixSimpleColorStrategy >> color [
	^ color
]

{ #category : #accessing }
FamixSimpleColorStrategy >> color: anObject [
	color := anObject
]

{ #category : #accessing }
FamixSimpleColorStrategy >> colorFor: anEntity [
	^ self color
]

{ #category : #comparing }
FamixSimpleColorStrategy >> hash [
	^ super hash bitXor: color hash
]
