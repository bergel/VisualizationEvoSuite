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

{ #category : 'as yet unclassified' }
VESExample >> smallExampleBig2 [
	"
	self new smallExampleBig2
	"
	^ VESModel new importFromString: VESTest new codeExampleBig2
]

{ #category : 'as yet unclassified' }
VESExample >> smallExampleReal [
	"
	self new smallExampleReal
	"
	^ VESModel new importFromString: '/Users/alexandrebergel/Downloads/2023-11-13-logEvoSuite.txt' asFileReference contents
]
