#include foxpro.h
CREATE SQL VIEW vcontracte connection connect1;
as select nrctr,datainch,dataexp,TO_CHAR(codcl) as codcl1,procdisctotctr from contracte

=DBSETPROP('vcontracte','View','Tables','comenzi')
=dbsetprop('vcontracte.nrctr','field','keyfield',.t.)

=dbsetprop('vcontracte.nrctr','field','updatable',.t.)
=dbsetprop('vcontracte.datainch','field','updatable',.t.)
=dbsetprop('vcontracte.dataexp','field','updatable',.t.)
=dbsetprop('vcontracte.procdisctotctr','field','updatable',.t.)

=dbsetprop('vcontracte','View','UpdateType',DB_UPDATE)
=dbsetprop('vcontracte','View','WhereType',DB_KEYandmodified)
=dbsetprop('vcontracte','View','SendUpdates',.t.)