page 50063 "Customer Card Kla"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            group(GroupName)
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

                field("Country/Region Code"; Rec."Country/Region Code")
                {
                    Caption = 'รหัสประเทศ';
                    ApplicationArea = All;
                }

                field(City; Rec.City)
                {
                    Caption = 'เมือง';
                    ApplicationArea = All;
                }

                field(County; Rec.County)
                {
                    Caption = 'เขต';
                    ApplicationArea = All;
                }

                field("Post Code"; Rec."Post Code")
                {
                    Caption = 'รหัสไปรษณีย์';
                    ApplicationArea = All;
                }


            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Show Email")
            {
                Caption = 'Show Email';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = Card;

                trigger OnAction()
                begin
                    Message('Email : %1', Rec."E-mail");
                end;
            }

            action("Show SalePerson")
            {
                Caption = 'Show SalePerson';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Report;
                Image = PersonInCharge;

                trigger OnAction()
                var
                    SalepersonTB: Record "Salesperson/Purchaser";
                begin
                    Clear(SalepersonTB);
                    SalepersonTB.SetCurrentKey(Code);
                    SalepersonTB.SetRange(Code, Rec."Salesperson Code");
                    if SalepersonTB.FindFirst() then begin
                        Message('Saleperson Code : %1\Saleperson Name : %2', Rec."Salesperson Code", SalepersonTB.Name);

                    end;
                end;
            }
        }


    }

    var
        myInt: Integer;
}