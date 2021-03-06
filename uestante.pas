unit uEstante;

{$mode objfpc}{$H+}

interface

    uses
        Classes, SysUtils, uLibro;
    type

        { TEstante }

        TEstante = class (TCollection)
        private
            function GetItem(Index: Integer): TLibro;
        public
            function Add : TLibro;
            property Items[Index: Integer] : TLibro read GetItem;

        end;

implementation

{ TEstante }

function TEstante.GetItem(Index: Integer): TLibro;
begin
    result := inherited Items[Index] as TLibro;
end;

function TEstante.Add: TLibro;
begin
    result := inherited Add as TLibro;
end;

end.

