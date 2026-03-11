/// <summary>
/// This is a List page which is used to display the records of the "KNH Test Table". 
/// </summary>
page 51200 KNHTestTable
{
    ApplicationArea = All;
    Caption = 'Test Table';
    PageType = List;
    SourceTable = KNHTestTable;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Title; Rec.Title)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Title field.';
                }
            }
        }
    }
}
