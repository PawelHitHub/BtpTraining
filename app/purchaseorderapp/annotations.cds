// using CatalogService as service from '../../srv/CatalogService';
 
 
// annotate service.POs with @(
//     UI.SelectionFields:[
//         PO_ID,
//         PARTNER_GUID.COMPANY_NAME,
//         PARTNER_GUID.ADDRESS_GUID.COUNTRY,
//         GROSS_AMOUNT,
//         CURRENCY_code
//     ],
//     UI.LineItem:[
//         {
//             $Type : 'UI.DataField',
//             Value : PO_ID,
//         },
//         {
//             $Type : 'UI.DataField',
//             Value : PARTNER_GUID.COMPANY_NAME,
//         },
//         {
//             $Type : 'UI.DataField',
//             Value : PARTNER_GUID.ADDRESS_GUID.COUNTRY,
//         },
//         {
//             $Type : 'UI.DataField',
//             Value : GROSS_AMOUNT,
//         },
//         {
//             $Type : 'UI.DataFieldForAction',
//             Action : 'CatalogService.boost',
//             Inline: true,
//             Label:'boost'
//         },
//         {
//             $Type : 'UI.DataField',
//             Value : OverallStatus,
//             Criticality: StatusCode
//         },
//         {
//             $Type : 'UI.DataField',
//             Value : CURRENCY_code,
//         },
//     ],
//     UI.HeaderInfo:{
//         TypeName: 'Purchase order',
//         TypeNamePlural: 'Purchase Orders',
//         Title: {Value : PO_ID, Label: 'PO'},
//         Description: {Value: PARTNER_GUID.COMPANY_NAME},
//         ImageUrl: 'https://dxc.com/content/dam/dxc/projects/dxc-com/us/images/about-us/newsroom/logos-for-media/vertical/DXC%20Logo_Purple+Black%20RGB.png'
//     },
//     UI.Facets:[
//         {
//             $Type : 'UI.CollectionFacet',
//             Label : 'More Info',
//             Facets : [
//                 {
//                     $Type : 'UI.ReferenceFacet',
//                     Target : '@UI.Identification',
//                     Label : 'More Details',
//                 },
//                 {
//                     $Type : 'UI.ReferenceFacet',
//                     Target : '@UI.FieldGroup#Spiderman',
//                     Label: 'pricing'
//                 },
//                 {
//                     $Type : 'UI.ReferenceFacet',
//                     Target : '@UI.FieldGroup#Superman',
//                     Label: 'status'
//                 },
//             ],
//         },
//     ],

//     UI.Identification: [
//         {
//             $Type : 'UI.DataField',
//             Value : PO_ID,
//         },
//         {
//             $Type : 'UI.DataField',
//             Value : PARTNER_GUID_NODE_KEY,
//         },
//     ],
//     UI.FieldGroup #Spiderman:{
//         Label : 'Pricing Data',
//         Data : [
//             {
//                 $Type : 'UI.DataField',
//                 Value : GROSS_AMOUNT,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Value : NET_AMOUNT,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Value : TAX_AMOUNT,
//             },
//         ],
//     },
//     UI.FieldGroup #Superman:{
//         Label: 'Status',
//         Data : [
//             {
//                 $Type : 'UI.DataField',
//                 Value : CURRENCY_code,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Value : OVERALL_STATUS,
//             },
//         ],
//     }
 
// );

using CatalogService as service from '../../srv/CatalogService';
 
 
annotate service.POs with @(
    UI.SelectionFields:[
        PO_ID,
        PARTNER_GUID.COMPANY_NAME,
        PARTNER_GUID.ADDRESS_GUID.COUNTRY,
        GROSS_AMOUNT,
        CURRENCY_code
    ],
    UI.LineItem:[
        {
            $Type : 'UI.DataField',
            Value : PO_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : PARTNER_GUID.COMPANY_NAME,
        },
        {
            $Type : 'UI.DataField',
            Value : PARTNER_GUID.ADDRESS_GUID.COUNTRY,
        },
        {
            $Type : 'UI.DataField',
            Value : GROSS_AMOUNT,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'CatalogService.boost',
            Inline: true,
            Label:'boost'
        },
        {
            $Type : 'UI.DataField',
            Value : OverallStatus,
            Criticality: StatusCode
        },
        {
            $Type : 'UI.DataField',
            Value : CURRENCY_code,
        },
    ],
    UI.HeaderInfo:{
        TypeName: 'Purchase order',
        TypeNamePlural: 'Purchase Orders',
        Title: {Value : PO_ID, Label: 'PO'},
        Description: {Value: PARTNER_GUID.COMPANY_NAME},
        ImageUrl: 'https://dxc.com/content/dam/dxc/projects/dxc-com/us/images/about-us/newsroom/logos-for-media/vertical/DXC%20Logo_Purple+Black%20RGB.png'
    },
    UI.Facets:[
        {
            $Type : 'UI.CollectionFacet',
            Label : 'More Info',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Target : '@UI.Identification',
                    Label : 'More Details',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Target : '@UI.FieldGroup#Spiderman',
                    Label: 'pricing'
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Target : '@UI.FieldGroup#Superman',
                    Label: 'status'
                },
            ],
        },

         {
            $Type : 'UI.ReferenceFacet',
            Target : 'Items/@UI.LineItem',
            Label: 'PO Items'
        },
    ],
    UI.Identification: [
        {
            $Type : 'UI.DataField',
            Value : PO_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : PARTNER_GUID_NODE_KEY,
        },
    ],
    UI.FieldGroup #Spiderman:{
        Label : 'Pricing Data',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : GROSS_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Value : NET_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Value : TAX_AMOUNT,
            },
        ],
    },
    UI.FieldGroup #Superman:{
        Label: 'Status',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : CURRENCY_code,
            },
            {
                $Type : 'UI.DataField',
                Value : OVERALL_STATUS,
            },
        ],
    }
 
);

annotate service.POItems with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Value : PO_ITEM_POS,
        },
        {
            $Type : 'UI.DataField',
            Value : PRODUCT_GUID_NODE_KEY,
        },
        {
            $Type : 'UI.DataField',
            Value : GROSS_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Value : CURRENCY_code,
        },
 
    ]
 
);
