#include foxpro.h
public nrctr_
nrctr_=1111
create sql view vliniicontr connection Connect1;
as select nrctr,nrliniectr,TO_CHAR(codpr) as codpr1,cantctr,cantrealiz,procdiscpr FROM liniicontr  WHERE nrctr= ?nrctr_
  
=dbsetprop('vliniicontr','View','Tables','Liniicontr')

=dbsetprop('vliniicontr.nrctr','Field','KeyField',.T.);
=dbsetprop('vliniicontr.nrliniectr','Field','KeyField',.T.);

=dbsetprop('vliniicontr.nrliniectr','Field','Updatable',.T.)
=dbsetprop('vliniicontr.nrctr','Field','Updatable',.T.)
=dbsetprop('vliniicontr.cantctr','Field','Updatable',.T.);
=dbsetprop('vliniicontr.cantrealiz','Field','Updatable',.T.);
=dbsetprop('vliniicontr.procdiscpr','Field','Updatable',.T.);

=dbsetprop('vliniicontr','View','UpdateType',DB_UPDATE);
=dbsetprop('vliniicontr','View','WhereType',DB_KEYandmodified);
=dbsetprop('vliniicontr','View','SendUpdates',.T.);


