#include foxpro.h
create sql view vlocalitati connection Connect1;
as select * from localitati
=dbsetprop('vlocalitati','view','tables','localitati')
=dbsetprop('vlocalitati.codpost','field','keyfield',.t.)
=dbsetprop('vlocalitati.codpost','field','updatable',.t.)


=dbsetprop('vlocalitati.loc','field','updatable',.t.)
=dbsetprop('vlocalitati.indicativ','field','updatable',.t.)

=dbsetprop('vlocalitati','View','UpdateType',DB_UPDATE)
=dbsetprop('vlocalitati','View','WhereType',DB_KEYANDMODIFIED)
=dbsetprop('vlocalitati','View','SendUpdates',.T.)