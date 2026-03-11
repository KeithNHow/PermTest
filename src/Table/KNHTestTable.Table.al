/// <summary>
/// This is a test table for testing permissions.
/// </summary>
table 51200 KNHTestTable
{
    Caption = 'Test Table';
    DataClassification = ToBeClassified;
    AllowInCustomizations = AsReadWrite;

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; Title; Text[30])
        {
            Caption = 'Title';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
