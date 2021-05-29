page 50060 "Employee List Kla"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Employee Kla";
    CardPageId = "Employee Card Kla";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Employee No."; Rec."Employee No.")
                {
                    Caption = 'เลขที่พนักงาน';
                    ApplicationArea = All;
                }

                field(Name; Rec.Name)
                {
                    Caption = 'ชื่อพนักงาน';
                    ApplicationArea = All;
                }

                field(Address; Rec.Address)
                {
                    Caption = 'ที่อยู่พนักงาน';
                    ApplicationArea = All;
                }


            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}