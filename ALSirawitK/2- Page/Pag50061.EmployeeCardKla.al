page 50061 "Employee Card Kla"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Employee Kla";


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Employee No."; Rec."Employee No.")
                {
                    Caption = 'เลขที่';
                    ApplicationArea = All;
                }

                field(Name; Rec.Name)
                {
                    Caption = 'ชื่อ';
                    ApplicationArea = All;
                }

                field(Address; Rec.Address)
                {
                    Caption = 'ที่อยู่';
                    ApplicationArea = All;
                }

                field(Address2; Rec.Address2)
                {
                    Caption = 'ที่อยู่ 2';
                    ApplicationArea = All;
                }

                field("VAT Registation No."; Rec."VAT Registation No.")
                {
                    Caption = 'เลขบัตรประชาชน';
                    ApplicationArea = All;
                }

                field("Phone No."; Rec."Phone No.")
                {
                    Caption = 'เบอร์โทรศัพท์';
                    ApplicationArea = All;
                }

                field("Customer No."; Rec."Customer No.")
                {
                    Caption = 'รหัสลูกค้า';
                    ApplicationArea = All;
                }

                field("Customer Name"; Rec."Customer Name")
                {
                    Caption = 'ชื่อลูกค้า';
                    ApplicationArea = All;
                }

                field("Sales (LCY)"; Rec."Sales (LCY)")
                {
                    Caption = 'Sales (LCY)';
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