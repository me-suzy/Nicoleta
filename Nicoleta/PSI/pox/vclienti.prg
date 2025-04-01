#include foxpro.h
create sql view vClienti connection Connect1;
as select * from Clienti

=dbsetprop('vClienti','View','Tables','Clienti')
=dbsetprop('vClienti.Codcl','Field','KeyField',.T.);
=dbsetprop('vClienti.Codcl','Field','Updatable',.T.)

=dbsetprop('vClienti.Dencl','Field','Updatable',.T.);
=dbsetprop('vClienti.Codfisc','Field','Updatable',.T.);
=dbsetprop('vClienti.Si','Field','Updatable',.T.);
=dbsetprop('vClienti.Adresa','Field','Updatable',.T.);
=dbsetprop('vClienti.Telefon','Field','Updatable',.T.);
=dbsetprop('vClienti.E_mail','Field','Updatable',.T.);
=dbsetprop('vClienti.CodPost','Field','Updatable',.T.);
=dbsetprop('vClienti.Vanzari','Field','Updatable',.T.);
=dbsetprop('vClienti.Incasari','Field','Updatable',.T.);
=dbsetprop('vClienti','View','UpdateType',DB_UPDATE);
=dbsetprop('vClienti','View','WhereType',DB_KEYANDMODIFIED);
=dbsetprop('vClienti','View','SendUpdates',.T.);
