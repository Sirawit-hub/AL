report 50606 "Sales Order-SirawitK"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Sales Order-SirawitK';
    DefaultLayout = RDLC;
    RDLCLayout = 'Exam\Sales Order-SirawitK.rdl';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = sorting("Document Type", "No.");
            RequestFilterFields = "No.", "Sell-to Customer No.";
            column(Sale_no; "No.")
            {

            }
            column(Sell_to_Customer_No; "Sell-to Customer No.")
            {

            }
            column(Sell_to_Address; "Sell-to Address")
            {

            }
            column(Sell_to_Address_2; "Sell-to Address 2")
            {

            }
            column(Companyinfo_Picture; Companyinfo.Picture)
            {

            }
            column(AVShow; AVShow)
            {

            }
            column(Companyinfo_name; Companyinfo.Name)
            {

            }
            column(Companyinfo_address; Companyinfo.Address)
            {

            }
            column(Companyinfo_address2; Companyinfo."Address 2")
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            dataitem("Sales Line"; "Sales Line")
            {
                DataItemTableView = sorting("Document Type", "Document No.", "Line No.");
                DataItemLink = "Document No." = field("No.");
                column(No; "No.")
                {

                }
                column(Description; Description)
                {

                }
                column(Location_Code; "Location Code")
                {

                }
                column(Unit_of_Measure_Code; "Unit of Measure Code")
                {

                }
                column(Amount; Amount)
                {

                }
                column(Running; Running)
                {

                }
                column(Quantity; Quantity)
                {

                }
                trigger OnPreDataItem()
                begin

                end;

                trigger OnAfterGetRecord()
                begin
                    Running += 1;
                end;

                trigger OnPostDataItem()
                begin
                    Clear(Running);
                end;
            }

            trigger OnPreDataItem()
            begin
                Clear(Companyinfo);
                Companyinfo.get();
                Companyinfo.CalcFields(Picture);
            end;

            trigger OnAfterGetRecord()
            begin

            end;

            trigger OnPostDataItem()
            begin

            end;

        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group("Option")
                {
                    field(AVShow; AVShow)
                    {
                        ApplicationArea = all;
                        Caption = 'Show Detail';
                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
        trigger OnOpenPage()
        begin
            AVShow := true;
        end;
    }

    trigger OnInitReport()
    begin

    end;

    trigger OnPreReport()
    begin

    end;

    trigger OnPostReport()
    begin

    end;

    var
        Companyinfo: Record "Company Information";
        running: Integer;
        AVShow: Boolean;
}