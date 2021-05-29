page 50062 "Customer List Kla"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;
    CardPageId = "Customer Card Kla";
    Editable = false;



    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
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

                field("Address 2"; Rec."Address 2")
                {
                    Caption = 'ที่อยู่พนักงาน 2';
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