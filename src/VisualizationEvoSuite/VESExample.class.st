Class {
	#name : 'VESExample',
	#superclass : 'Object',
	#category : 'VisualizationEvoSuite',
	#package : 'VisualizationEvoSuite'
}

{ #category : 'as yet unclassified' }
VESExample >> smallExample [
	"
	self new smallExample
	"
	^ VESModel new importFromString: VESTest new codeExample
]

{ #category : 'as yet unclassified' }
VESExample >> smallExampleBig [
	"
	self new smallExampleBig
	"
	^ VESModel new importFromString: VESTest new codeExampleBig
]
