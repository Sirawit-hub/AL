table 50060 "Employee Kla"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(50060; "Employee No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(50061; "Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(50062; "Address"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(50063; "Address2"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(50064; "VAT Registation No."; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(50065; "Phone No."; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(50066; "Customer No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer;

            trigger OnValidate()
            var
                CustomerTB: Record Customer;
            begin
                Clear(CustomerTB);
                CustomerTB.SetCurrentKey("No.");
                CustomerTB.SetRange("No.", "Customer No.");
                if CustomerTB.FindFirst() then begin
                    "Customer Name" := CustomerTB.Name;
                    CustomerTB.CalcFields(CustomerTB."Sales (LCY)");
                    "Sales (LCY)" := CustomerTB."Sales (LCY)";
                end;
            end;
        }

        field(50067; "Customer Name"; Text[250])
        {
            DataClassification = ToBeClassified;
        }

        field(50068; "Sales (LCY)"; Decimal)
        {
            DataClassification = ToBeClassified;
        }






    }

    keys
    {
        key(PK; "Employee No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}