#include foxpro.h
create SQL view vclienti connection connect1;
as select * from clienti
=dbsetprop('vClienti','View','Tables','Clienti')
=dbsetprop('vClienti.codcl','field','keyfield',.T.)
=dbsetprop('vClienti.codcl','field','Updatable',.T.)

=dbsetprop('vClienti.Dencl','field','updatable',.T.)
=dbsetprop('vClienti.Codfisc','field','updatable',.T.)
=dbsetprop('vClienti.Si','field','updatable',.T.)
=dbsetprop('vClienti.Adresa','field','updatable',.T.)
=dbsetprop('vClienti.Telefon','field','updatable',.T.)
=dbsetprop('vClienti.E_mail','field','updatable',.T.)
=dbsetprop('vClienti.Codpost','field','updatable',.T.)
=dbsetprop('vClienti.Vanzari','field','updatable',.T.)
=dbsetprop('vClienti.Incasari','field','updatable',.T.)

=dbsetprop('vClienti','View','UpdateType',DB_UPDATE)
=dbsetprop('vClienti','View','WhereType',DB_KEYANDMODIFIED)
=dbsetprop('vClienti','View','SendUpdates',.T.)