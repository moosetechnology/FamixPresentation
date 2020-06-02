Extension { #name : #FamixTSourceEntity }

{ #category : #'*Famix-Presentation' }
FamixTSourceEntity classSide >> deadItemProperty [
	<famixPresentationProperty>
	^ FamixPresentationProperty label: 'Dead Item' color: (MDLColor tint: #red code: '600') condition: #isDead
]

{ #category : #'*Famix-Presentation' }
FamixTSourceEntity classSide >> duplicationProperty [
	<famixPresentationProperty>
	^ FamixPresentationProperty label: 'Duplicated Item' color: MDLColor orange condition: #containsReplicas
]
