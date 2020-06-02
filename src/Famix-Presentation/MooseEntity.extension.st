Extension { #name : #MooseEntity }

{ #category : #'*Famix-Presentation' }
MooseEntity >> color [
	"I return a color for my kind of entity. For more options see SYNAbstractColorStrategy and its subclasses."

	^ self class color
]

{ #category : #'*Famix-Presentation' }
MooseEntity class >> color [
	^ self subclassResponsibility
]

{ #category : #'*Famix-Presentation' }
MooseEntity >> containsReplicas [
	^ false
]

{ #category : #'*Famix-Presentation' }
MooseEntity class >> englishName [
	^ self nameTranslations at: #english
]

{ #category : #'*Famix-Presentation' }
MooseEntity class >> frenchName [
	^ self nameTranslations at: #french
]

{ #category : #'*Famix-Presentation' }
MooseEntity class >> isDisplayable [
	"This will help to write some tests. This should return true for all entities dislpayable in the interfaces.

	This is a naive approch but should work most of the time."

	^ (self hasSubclasses or: [ self package name includesSubstring: 'Test' ]) not
]

{ #category : #'*Famix-Presentation' }
MooseEntity >> kindAbbreviation [
	"I should return an initial of the class to display in the lists of the web browsers"

	^ self class kindAbbreviation
]

{ #category : #'*Famix-Presentation' }
MooseEntity class >> kindAbbreviation [
	"I should return an initial of the class to display in the lists of the web browsers"

	^ self subclassResponsibility
]

{ #category : #'*Famix-Presentation' }
MooseEntity >> multilanguageDisplayName [
	^ self class multilanguageDisplayName
]

{ #category : #'*Famix-Presentation' }
MooseEntity class >> nameTranslations [
	^ self subclassResponsibility
]

{ #category : #'*Famix-Presentation' }
MooseEntity class >> presentationProperties [
	"Display color properties can be use to determine the color of an entity depending of its state or to highligh some text in some browsers"

	^ (Pragma allNamed: #famixPresentationProperty from: self class to: MooseEntity) collect: [ :pragma | self perform: pragma methodSelector ]
]

{ #category : #'*Famix-Presentation' }
MooseEntity >> presentationProperties [
	^ self class presentationProperties
]
