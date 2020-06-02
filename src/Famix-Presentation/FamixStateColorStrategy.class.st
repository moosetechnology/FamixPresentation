"
Description
--------------------

I am a strategy returning a color for an entity depending on its state. (Dead, duplicated…)

This is based on the FamixPresentationProperties declared for the entity.

Examples
--------------------

	FamixStateColorStrategy new
 
"
Class {
	#name : #FamixStateColorStrategy,
	#superclass : #FamixColorStrategy,
	#category : #'Famix-Presentation-Colors'
}

{ #category : #accessing }
FamixStateColorStrategy class >> label [
	^ 'State'
]

{ #category : #'instance creation' }
FamixStateColorStrategy class >> newDefaultStrategy [
	^ self new
]

{ #category : #accessing }
FamixStateColorStrategy >> colorFor: anEntity [
	anEntity presentationProperties
		select: #hasCondition
		thenDo: [ :aProperty | 
			(aProperty isValidFor: anEntity)
				ifTrue: [ ^ aProperty color ] ].
	self errorFor: anEntity
]
