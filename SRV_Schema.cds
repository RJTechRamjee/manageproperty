using { manageproperty as my } from '../db/schema.cds';

@path : '/service/ManagePropertyService'
service ManagePropertyService
{
    @odata.draft.enabled
    entity Properties as
        projection on my.Properties;

    @odata.draft.enabled
    entity Users as
        projection on my.Users;
}

annotate ManagePropertyService with @requires :
[
    'authenticated-user'
];
