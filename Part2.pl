edge(albert,isa,man).
edge(louis,isa,man).
edge(frank,isa,turkey).
edge(man,ako,human).
edge(turkey,ako,bird).
edge(human,ako,creature).
edge(bird,ako,creature).
property(louis,legs,one).
property(human,legs,two).
property(bird,fly,yes).
property(turkey,fly,no).


propertyrelation(Node,Property,Value) :- property(Node,Property,Value),!.
propertyrelation(Node,Property,Value) :- edge(Node,Rel,Others),propertyrelation(Others,Property,Value),\+property(Node,Property,_).

rel(SourceNode,RelationshipType,DestinationNode) :- edge(SourceNode,RelationshipType,DestinationNode).
rel(SourceNode,RelationshipType,DestinationNode) :- edge(SourceNode,rel,Others),rel(Others,RelationshipType,DestinationNode).