Extension { #name : #FamixTAnnotationType }

{ #category : #'*Famix-Presentation' }
FamixTAnnotationType classSide >> color [
	^ MDLColor tint: #pink code: #'300'
]

{ #category : #'*Famix-Presentation' }
FamixTAnnotationType classSide >> kindAbbreviation [
	^ 'AD'
]

{ #category : #'*Famix-Presentation' }
FamixTAnnotationType classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Annotation Definition'
		with: #french -> 'Définition d''Annotation'
]
