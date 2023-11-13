Class {
	#name : 'VESModel',
	#superclass : 'Object',
	#instVars : [
		'generations'
	],
	#category : 'VisualizationEvoSuite',
	#package : 'VisualizationEvoSuite'
}

{ #category : 'accessing' }
VESModel >> generations [
	^ generations
]

{ #category : 'as yet unclassified' }
VESModel >> importFromString: aString [
	| s l currentGeneration currentIndividualLines |
	s := aString readStream.
	
	[ s atEnd ] whileFalse: [ 
		l := s nextLine.	
	 	(l = ' Initial population: { ' or: [ l beginsWith: 'Population for iteration:' ]) 
			ifTrue: [ currentGeneration := VESGeneration new. 
		 				currentGeneration iteration: self numberOfGenerations.
						 generations add: currentGeneration.
						 currentIndividualLines := OrderedCollection new. ]
			ifFalse: [
				(l = '},' or: [ l = '}, }' ]) 
					ifTrue: [ currentGeneration addIndividual: (self importIndividualFromString: (String cr join: currentIndividualLines)).
								 currentIndividualLines := OrderedCollection new. ]
					ifFalse: [ currentIndividualLines add: l ] ].
	]
]

{ #category : 'as yet unclassified' }
VESModel >> importIndividualFromString: string [
	| ind allLines header ss |
	ind := VESIndividual new.
	allLines := string lines.
	header := allLines first.
	ss := header substrings.
	ind esHash: ss first allButLast.
	ind fitness: (Float readFrom: ss fourth).
	ind code: (String cr join: (allLines copyFrom: 2 to: allLines size - 3)).
	^ ind
	

]

{ #category : 'as yet unclassified' }
VESModel >> initialize [
	super initialize. 
	generations := OrderedCollection new.
]

{ #category : 'tools' }
VESModel >> inspector [
	<inspectorPresentationOrder: 90 title: 'Visualize'>
	^ SpRoassalInspectorPresenter new
		canvas: self visualize;
		yourself
]

{ #category : 'as yet unclassified' }
VESModel >> numberOfGenerations [
	^ generations size
]

{ #category : 'as yet unclassified' }
VESModel >> numberOfIndividuals [
	^ generations inject: 0 into: [ :sum :g | sum + g size ]
]

{ #category : 'as yet unclassified' }
VESModel >> visualize [
	| c composite indsShapes boxInd allIndividualShapes |
	c := RSCanvas new.
	self generations do: [ :g |
		composite := RSComposite new.
		composite color: Color veryVeryLightGray.
		composite model: g.
		composite @ RSPopup.
		
		indsShapes := RSGroup new.
		g individuals do: [ :ind |
			boxInd := RSBox model: ind.
			boxInd @ RSPopup.
			boxInd color: Color blue.
			indsShapes add: boxInd.
		].
	
		RSNormalizer size
			shapes: indsShapes;
			normalize: #loc.
		composite padding: 10.
		RSHorizontalLineLayout on: indsShapes.
		composite shapes: indsShapes.
		
		c add: composite.
	].

	allIndividualShapes := c allChildren select: [ :s | s model class == VESIndividual ].
	RSNormalizer color
			shapes: allIndividualShapes;
			from: Color gray; to: Color green;
			normalize: #fitness.

	RSVerticalLineLayout new alignCenter; verticalGap: 30; on: c shapes.
	^ c @ RSCanvasController
]
