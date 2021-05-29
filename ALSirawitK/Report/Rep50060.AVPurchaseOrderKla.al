report 50060 "AV_Purchase Order - Kla"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Purchase Order - Kla';
    DefaultLayout = RDLC;
    RDLCLayout = 'Report\Purchase Order - Kla.rdl';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            DataItemTableView = sorting("Document Type", "No.");
            RequestFilterFields = "No.";
            column(PurchaseHeader_No; "No.")
            {
            }
            column(PurchaseHeader_PaytoName; "Pay-to Name")
            {
            }
            column(PurchaseHeader_PaytoAddress; "Pay-to Address")
            {
            }

            column(Companyinfo_Picture; Companyinfo.Picture)
            {
            }

            column(Companyinfo_Name; Companyinfo.Name)
            {
            }

            dataitem("Purchase Line"; "Purchase Line")
            {
                //DataItemLinkReference = "Purchase Header";
                DataItemTableView = sorting("Document Type", "Document No.", "Line No.");
                DataItemLink = "Document No." = field("No.");
                column(PurchaseLine_No; "No.")
                {
                }

                column(PurchaseLine_Description; Description)
                {
                }

                column(PurchaseLine_Quantity; Quantity)
                {
                }

                column(PurchaseLine_UnitofMeasure; "Unit of Measure")
                {
                }

                column(PurchaseLine_Amount; Amount)
                {
                }

                column(Runing; Runing)
                {
                }

                column(AVShow; AVShow)
                {
                }


                trigger OnPreDataItem()
                begin

                end;

                trigger OnAfterGetRecord()
                begin
                    Runing += 1;
                end;

                trigger OnPostDataItem()
                begin
                    Clear(Runing);
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
                group("Report Filter")
                {
                    field(AVShow; AVShow)
                    {
                        ApplicationArea = all;
                        Caption = 'Show Total';
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

        Runing: Integer;

        AVShow: Boolean;
}