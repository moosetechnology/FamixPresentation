Extension { #name : #FamixTAnnotationInstance }

{ #category : #'*Famix-Presentation' }
FamixTAnnotationInstance classSide >> color [
	^ MDLColor tint: #pink code: #'500'
]

{ #category : #'*Famix-Presentation' }
FamixTAnnotationInstance classSide >> kindAbbreviation [
	^ 'AI'
]

{ #category : #'*Famix-Presentation' }
FamixTAnnotationInstance classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Annotation instance'
		with: #french -> 'Instance d''annotation'
]
