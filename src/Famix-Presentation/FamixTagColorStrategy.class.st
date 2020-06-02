"
Description
--------------------

I am a strategy returning a color depending on the color of the tags of an entity. For a tag I return its color. If there is multiple tag I return a color preconfigured by the user. 

Examples
--------------------

	SYNTagColorStrategy colorForMultipleTag: Color black
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	colorForMultipleTag:		<aColor>	A color to return in case we have multiple tags

"
Class {
	#name : #FamixTagColorStrategy,
	#superclass : #FamixColorStrategy,
	#instVars : [
		'colorForMultipleTag'
	],
	#category : #'Famix-Presentation'
}

{ #category : #'instance creation' }
FamixTagColorStrategy class >> colorForMultipleTag: aColor [
	^ self new
		colorForMultipleTag: aColor;
		yourself
]

{ #category : #accessing }
FamixTagColorStrategy class >> label [
	^ 'Tag'
]

{ #category : #'instance creation' }
FamixTagColorStrategy class >> newDefaultStrategy [
	^ self colorForMultipleTag: MDLColor black
]

{ #category : #comparing }
FamixTagColorStrategy >> = anObject [
	^ super = anObject and: [ colorForMultipleTag = anObject colorForMultipleTag ]
]

{ #category : #accessing }
FamixTagColorStrategy >> colorFor: anEntity [
	anEntity isTag ifTrue: [ ^ anEntity color ].
	
	^ anEntity tags
		ifNotEmpty: [ :tags | 
			tags size > 1
				ifTrue: [ self colorForMultipleTag ]
				ifFalse: [ tags anyOne color ] ]
		ifEmpty: [ self errorFor: anEntity ]
]

{ #category : #accessing }
FamixTagColorStrategy >> colorForMultipleTag [
	^ colorForMultipleTag
]

{ #category : #accessing }
FamixTagColorStrategy >> colorForMultipleTag: anObject [
	colorForMultipleTag := anObject
]

{ #category : #comparing }
FamixTagColorStrategy >> hash [
	^ super hash bitXor: colorForMultipleTag hash
]
