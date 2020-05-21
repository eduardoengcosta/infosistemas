unit uProcessos;

interface

type

 TProcedimentos = class
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
  published
    { published declarations }
    function ValidaEmail(email : String) : boolean;
    function ValidaCPF(cpf : String) : boolean;
  end;


const
  CrtEsp: array[1..40] of string[1] =
  ( '!','#','$','%','¨','&','*',
  '(',')','+','=','§','¬','¢','¹','²',
  '³','£','´','`','ç','Ç',',',';',':',
  '<','>','~','^','?','/','','|','[',']','{','}',
  'º','ª','°');

  Letras: array[1..27] of string[1] =
  ('a','b','c','d','e','f','g',
  'h','i','j','k','l','m','n','o','p',
  'q','r','s','t','u','v','w','x','y',
  'z','ç');

implementation
uses SysUtils;
{ TProcedimentos }

function TProcedimentos.ValidaCPF(cpf: String): boolean;
var
  i : integer;
begin
  cpf := StringReplace(cpf, '.', '', [rfReplaceAll, rfIgnoreCase]);
  cpf := StringReplace(cpf, '-', '', [rfReplaceAll, rfIgnoreCase]);

  if trim(cpf) <> '' then begin
    for i := 1 to length(cpf) - 1 do begin
      if Pos(CrtEsp[i], cpf)<>0 then
        Result := False;
    end;

    for i := 1 to length(cpf) - 1 do begin
      if Pos(Letras[i], cpf)<>0 then
        Result := False;
    end;

    Result := True;
  end
  else
    Result := False;

end;

function TProcedimentos.ValidaEmail(email: String): boolean;
var
  i : integer;
begin
  if Trim(email) <> '' then begin
    if (Pos('@', email) <> 0) and (Pos('.', email) <> 0) then
    begin
      for i := 1 to length(email) - 1 do begin
        if Pos(CrtEsp[i], EMail)<>0 then
          Result := False;
      end;

      Result := True;
    end
    else
      Result := False;
  end
  else
    Result := False;

end;

end.
