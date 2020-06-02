Extension { #name : #FamixTNamedEntity }

{ #category : #'*Famix-Presentation' }
FamixTNamedEntity >> fullName [
	^ String streamContents: [ :stream | self fullNameOn: stream ]
]

{ #category : #'*Famix-Presentation' }
FamixTNamedEntity >> fullNameOn: stream [
	self flag: #todo.	"Manage case of multiple parents."
	self parents
		ifNotEmpty: [ :parents | 
			parents anyOne fullNameOn: stream.
			stream nextPut: $. ].
	stream nextPutAll: self name
]
