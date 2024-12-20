page 50130 "My Custom Project API"
{
    PageType = API;

    APIPublisher = 'Amazon';
    APIGroup = 'MyCustomAPI';
    APIVersion = 'v1.0';

    EntityCaption = 'Job';
    EntitySetCaption = 'Jobs';
    EntityName = 'job';
    EntitySetName = 'jobs';

    SourceTable = Job; // This is your table name
    Caption = 'Job API';

    // Set DelayedInsert according to your needs.
    Extensible = false;
    DelayedInsert = true;

    layout
    {
        area(content)
        {
            repeater(group)
            {
                field(No; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field("CustomerNo"; Rec."Bill-to Customer No.")
                {
                    Caption = 'Customer No.';
                    TableRelation = "Customer"."No.";
                }
            }
        }
    }

    [IntegrationEvent(false, false)]
    local procedure OnBeforeInsertRecord()
    begin
    end;

    // trigger OnAfterInsert()
    // var
    //     RecRef: RecordRef;
    // begin
    //     RecRef.GetTable(Rec);
    //     OnBeforeInsertRecord();
    //     // Additional logic can be added here after insertion if needed
    // end;
}