unit uEnviaEmail;

interface

uses IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage,
  DB, DBClient, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdText, IdAttachmentFile, IniFiles, Messages, SysUtils, Dialogs;

type
  TEnviarEmail = class
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    function EnviarEmail(email,NomeCad,NomeArq:String; const cdsCliente : TClientDataSet) : boolean;
  published
    { published declarations }
  end;

implementation

{ TEnviarEmail }

function TEnviarEmail.EnviarEmail(email, NomeCad, NomeArq: String; const cdsCliente : TClientDataSet): boolean;
var
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
  sAnexo, sCorpoEmail: string;


  Enviado : Boolean;
begin
  IdSMTP         := TIdSMTP.Create(nil);
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create();
  IdMessage      := TIdMessage.Create();

  try
    // Configura SSL
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode   := sslmClient;

    // Configuração do servidor SMTP (TIdSMTP)
    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
    IdSMTP.UseTLS := utUseImplicitTLS;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Port := 465;
    IdSMTP.Host := 'smtp.gmail.com';
    IdSMTP.Username := 'crud.infosistemas@gmail.com';
    IdSMTP.Password := 'q1w@e#r$';

    sCorpoEmail := '';
    cdsCliente.First;
    while not cdsCliente.Eof do
    begin
      sCorpoEmail := 'Cliente:    ' + cdsCliente.FieldByName('NOME').AsString         + #13+
                     'Identidade: ' + cdsCliente.FieldByName('IDENTIDADE').AsString   + #13+
                     'C.P.F.:     ' + cdsCliente.FieldByName('CPF').AsString          + #13+
                     'Telefone:   ' + cdsCliente.FieldByName('TELEFONE').AsString     + #13+
                     'Email:      ' + cdsCliente.FieldByName('EMAIL').AsString        + #13+
                     'CEP:        ' + cdsCliente.FieldByName('CEP').AsString          + #13+
                     'Logradouro: ' + cdsCliente.FieldByName('LOGRADOURO').AsString   + #13+
                     'Número:     ' + cdsCliente.FieldByName('NUMERO').AsString       + #13+
                     'Compl.:     ' + cdsCliente.FieldByName('COMPLEMENTO').AsString  + #13+
                     'Bairro:     ' + cdsCliente.FieldByName('BAIRRO').AsString       + #13+
                     'Cidade:     ' + cdsCliente.FieldByName('CIDADE').AsString       + #13+
                     'UF:         ' + cdsCliente.FieldByName('ESTADO').AsString       + #13+
                     'País:       ' + cdsCliente.FieldByName('PAIS').AsString;
      cdsCliente.Next;
    end;


    // Configuração da mensagem
    IdMessage.Clear;
    IdMessage.Body.Clear;
    IdMessage.Recipients.Clear;
    IdMessage.From.Address              := 'crud.infosistemas@gmail.com';
    IdMessage.From.Name                 := 'Crud - Infosistemas';
    IdMessage.ReceiptRecipient.Address  := 'crud.infosistemas@gmail.com';
    IdMessage.Subject                   := 'Cadastro de Clientes';
    IdMessage.ContentType               := 'multipart/mixed';

    IdMessage.Recipients.EMailAddresses := email;
    IdMessage.CCList.EMailAddresses := '';
    IdMessage.BccList.EMailAddresses := '';

    IdText := TIdText.Create(IdMessage.MessageParts);
    IdText.Body.Add('Cadastro do Cliente ' + NomeCad + ' realizado com sucesso.');
    IdText.Body.Add(sCorpoEmail);
    IdText.ContentType := 'text/plain; charset=iso-8859-1';

    sAnexo := NomeArq;
    if FileExists(sAnexo) then
    begin
      TIdAttachmentFile.Create(IdMessage.MessageParts, sAnexo);
    end;

    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        Enviado := False;
        Exit;
      end;
    end;

    try
      IdSMTP.Send(IdMessage);
      Enviado := True;
    except
      On E:Exception do
      begin
        Enviado := False;
      end;
    end;
  finally
    IdSMTP.Disconnect;
    UnLoadOpenSSLLibrary;
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);

    Result := Enviado;
  end;
end;

end.
