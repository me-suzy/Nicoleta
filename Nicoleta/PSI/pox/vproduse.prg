#include foxpro.h
create sql view vproduse connection Connect1;
as select * from Clienti

=dbsetprop('vProduse','View','Tables','Produse')
=dbsetprop('vProduse.Codpr','Field','KeyField',.T.);
=dbsetprop('vProduse.Codcl','Field','Updatable',.T.)

=dbsetprop('vProduse.Dencl','Field','Updatable',.T.);
=dbsetprop('vProduse.Codfisc','Field','Updatable',.T.);
=dbsetprop('vProduse.Si','Field','Updatable',.T.);
=dbsetprop('vProduse.Adresa','Field','Updatable',.T.);
=dbsetprop('vProduse.Telefon','Field','Updatable',.T.);
=dbsetprop(vProduse.E_mail','Field','Updatable',.T.);
=dbsetprop('vProduse.CodPost','Field','Updatable',.T.);
=dbsetprop(vProduse.Vanzari','Field','Updatable',.T.);
=dbsetprop('vClienti.Incasari','Field','Updatable',.T.);
=dbsetprop('vClienti','View','UpdateType',DB_UPDATE);
=dbsetprop('vClienti','View','WhereType',DB_KEYANDMODIFIED);
=dbsetprop('vClienti','View','SendUpdates',.T.);
