#include foxpro.h
CREATE SQL VIEW vcomenzi connection connect1;
as select idcom,datacom,to_char(codcl) as codcl,valcomcer,valcomliv,obs from comenzi

=DBSETPROP('vcomenzi','View','Tables','comenzi')
=dbsetprop('vcomenzi.idcom','field','keyfield',.t.)

=dbsetprop('vcomenzi.idcom','field','updatable',.t.)
=dbsetprop('vcomenzi.datacom','field','updatable',.t.)
=dbsetprop('vcomenzi.valcomcer','field','updatable',.t.)
=dbsetprop('vcomenzi.valcomliv','field','updatable',.t.)
=dbsetprop('vcomenzi.obs','field','updatable',.t.)

=DBSETPROP('vcomenzi','View','UpdateType',DB_UPDATE)
=DBSETPROP('vcomenzi','View','WhereType',DB_KEY)
=DBSETPROP('vcomenzi','View','SendUpdates',.t.)