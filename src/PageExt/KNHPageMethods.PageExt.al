/// <summary>
/// This is a PageExtension that extends the Payment Methods page. It adds a new action called "Permission Test" to the processing group. When the action is clicked, it will attempt to insert a record into the "KNH Test Table". If the user does not have permission to insert records into the table, an error message will be displayed. To successfully use this action, the user must have permission to access the page, read and insert permissions for the table, and access permission for the page extension action.
/// </summary>
pageextension 51200 KNHPageMethods extends "Payment Methods"
{
    actions
    {
        addfirst(processing)
        {
            action("Permission Test")
            {
                ApplicationArea = All;
                Caption = 'Permission Test';
                ToolTip = 'Permission Test';
                Image = TestDatabase;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    TestTable: Record KNHTestTable;
                begin
                    TestTable.Reset();
                    TestTable.DeleteAll();
                    TestTable.Init();
                    TestTable."No." := '001';
                    TestTable.Title := 'Test';
                    TestTable.Insert();
                    if TestTable.FindFirst() then
                        Message(TestTable.Title);
                end;
            }
        }
    }
}
