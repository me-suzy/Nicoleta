#include foxpro.h
create sql view vJudet connection Connect1;
as select * from Judet
=dbsetprop('vjudet','view','tables','Judet')
=dbsetprop('vjudet.indicativ','field','keyfield',.t.)
=dbsetprop('vjudet.indicativ','field','updatable',.t.)


=dbsetprop('vjudet.jud','field','updatable',.t.)
=dbsetprop('vjudet.regiune','field','updatable',.t.)

=dbsetprop('vjudet','View','UpdateType',DB_UPDATE)
=dbsetprop('vjudet','View','WhereType',DB_KEYANDMODIFIED)
=dbsetprop('vjudet','View','SendUpdates',.T.)