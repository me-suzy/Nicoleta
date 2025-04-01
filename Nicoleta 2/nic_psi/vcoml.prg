#include foxpro.h
public idcom_
idcom_=1001
Create Sql View Vcoml connection connect1 ;
as select idcom,nrliniec,TO_CHAR(codpr) as codpr,cantcer,cantlivr,pu from liniicom where idcom=?idcom_

 
=DBSETPROP('Vcoml','view','tables','liniicom')

=DBSETPROP('Vcoml.idcom','field','keyfield',.T.)
=DBSETPROP('Vcoml.nrliniec','field','keyfield',.T.)

=DBSETPROP('Vcoml.idcom','field','updatable',.T.)
=DBSETPROP('Vcoml.nrliniec','field','updatable',.T.)
=DBSETPROP('Vcoml.cantcer','field','updatable',.T.)
=DBSETPROP('Vcoml.cantlivr','field','updatable',.T.)
=DBSETPROP('Vcoml.pu','field','updatable',.T.)

=DBSETPROP('Vcoml','View','updatetype',DB_UPDATE)
=DBSETPROP('Vcoml','View','WhereType',DB_KEY)
=DBSETPROP('Vcoml', 'view', 'SendUpdates', .T.)