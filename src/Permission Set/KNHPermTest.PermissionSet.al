permissionset 51200 KNHPermTest
{
    Assignable = true;
    Caption = 'Test Table', MaxLength = 30;
    Permissions =
        table KNHTestTable = X,
        tabledata KNHTestTable = R,
        page KNHTestTable = X;
}
