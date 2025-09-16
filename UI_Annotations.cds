using ManagePropertyService as service from '../../srv/service';
annotate service.Properties with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Id',
                Value : Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Title',
                Value : Title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : Description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Type',
                Value : Type,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ListingFor',
                Value : ListingFor,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Purpose',
                Value : Purpose,
            },
            {
                $Type : 'UI.DataField',
                Label : 'State',
                Value : State,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IsVacant',
                Value : IsVacant,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AvailableFrom',
                Value : AvailableFrom,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Id',
            Value : Id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Title',
            Value : Title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : Description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Type',
            Value : Type,
        },
        {
            $Type : 'UI.DataField',
            Label : 'ListingFor',
            Value : ListingFor,
        },
    ],
);

annotate service.Properties with {
    ContactPerson @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Users',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : ContactPerson_UserUuid,
                ValueListProperty : 'UserUuid',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'FirstName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'LastName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Email',
            },
        ],
    }
};

