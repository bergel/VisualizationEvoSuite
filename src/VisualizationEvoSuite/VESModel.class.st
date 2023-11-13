Class {
	#name : 'VESModel',
	#superclass : 'Object',
	#instVars : [
		'generations'
	],
	#category : 'VisualizationEvoSuite',
	#package : 'VisualizationEvoSuite'
}

{ #category : 'as yet unclassified' }
VESModel >> importFromString: aString [
	
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

{ #category : 'as yet unclassified' }
VESModel >> numberOfGenerations [
	^ generations size
]

{ #category : 'as yet unclassified' }
VESModel >> numberOfIndividuals [
	^ generations inject: 0 into: [ :sum :g | sum + g size ]
]
