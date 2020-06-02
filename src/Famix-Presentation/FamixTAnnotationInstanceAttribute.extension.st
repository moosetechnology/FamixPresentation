Extension { #name : #FamixTAnnotationInstanceAttribute }

{ #category : #'*Famix-Presentation' }
FamixTAnnotationInstanceAttribute classSide >> color [
	^ MDLColor tint: #pink code: #'900'
]

{ #category : #'*Famix-Presentation' }
FamixTAnnotationInstanceAttribute classSide >> kindAbbreviation [
	^ 'AIA'
]

{ #category : #'*Famix-Presentation' }
FamixTAnnotationInstanceAttribute classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Annotation instance attribute'
		with: #french -> 'Attribut d''instance d''annotation'
]
