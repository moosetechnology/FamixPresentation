"
Description
--------------------

I am a strategy returning a color specific to the kind of entity we get.

Examples
--------------------

	FamixKindColorStrategy new
"
Class {
	#name : #FamixKindColorStrategy,
	#superclass : #FamixColorStrategy,
	#category : #'Famix-Presentation-Colors'
}

{ #category : #accessing }
FamixKindColorStrategy class >> label [
	^ 'Kind'
]

{ #category : #'instance creation' }
FamixKindColorStrategy class >> newDefaultStrategy [
	^ self new
]

{ #category : #accessing }
FamixKindColorStrategy >> colorFor: anEntity [
	^ anEntity color
]
