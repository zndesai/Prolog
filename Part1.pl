edge(human,ako,creature).
edge(bird,ako,creature).
edge(man,ako,human).
edge(turkey,ako,bird).
edge(albert,isa,man).
edge(louis,isa,man).
edge(frank,isa,turkey).

rel(SourceNode,RelationshipType,DestinationNode) :- edge(SourceNode,RelationshipType,DestinationNode).
rel(SourceNode,RelationshipType,DestinationNode) :- edge(SourceNode,rel,Others),rel(Others,RelationshipType,DestinationNode).