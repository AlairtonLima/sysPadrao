program Degusty;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untCadCD in '..\SIDA\untCadCD.pas' {frmCadCD},
  untConfigTEF in '..\SIDA\untConfigTEF.pas' {frmConfigTEF},
  untIBPT in '..\SIDA\untIBPT.pas' {frmIBPT},
  untImpCNPJ in '..\SIDA\untImpCNPJ.pas' {frmImpCNPJ},
  untLogin in '..\SIDA\untLogin.pas' {frmLogin},
  untSplash in '..\SIDA\untSplash.pas' {frmSplash},
  untMostraData in 'untMostraData.pas',
  untEmpresa in '..\SIGA\untEmpresa.pas' {frmEmpresa},
  untFornec in '..\SIGA\untFornec.pas' {frmFornec},
  untColab in '..\SIGA\untColab.pas' {frmColab},
  untClientes in '..\SIGA\untClientes.pas' {frmClientes},
  untProdutos in 'untProdutos.pas' {frmProdutos},
  untDM in 'untDM.pas' {dmBanco: TDataModule},
  untDMRelat in 'untDMRelat.pas' {dmRelat: TDataModule},
  untHistCx in '..\SIGA\untHistCx.pas' {frmHistCx},
  untApagar in '..\SIGA\untApagar.pas' {frmApagar},
  untFiado in '..\SIGA\untFiado.pas' {frmFiado},
  untCaixa in '..\SIGA\untCaixa.pas' {frmCaixa},
  untAreceber in '..\SIGA\untAreceber.pas' {frmAreceber},
  untFluxoCx in '..\SIGA\untFluxoCx.pas' {frmFluxoCx},
  untParSistema in '..\SIGA\untParSistema.pas' {frmParSistema},
  untAudit in '..\SIGA\untAudit.pas' {frmAudit},
  untRegistro in 'untRegistro.pas' {frmRegistro},
  untFilaPedidos in 'untFilaPedidos.pas' {frmFilaPedidos},
  untVendaRapida in 'untVendaRapida.pas' {frmVendaRapida},
  untMesaCom in 'untMesaCom.pas' {frmMesaCom},
  untPedBalcao in 'untPedBalcao.pas' {frmPedBalcao},
  untEntrega in 'untEntrega.pas' {frmEntrega},
  untRelEmpresa in '..\SIGA\untRelEmpresa.pas' {frmRelEmpresa},
  untDmBase in '..\SIGA\untDmBase.pas' {dmBase: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmSplash, frmSplash);
  Application.CreateForm(TdmBanco, dmBanco);
  Application.CreateForm(TdmRelat, dmRelat);
  Application.CreateForm(TfrmRelEmpresa, frmRelEmpresa);
  Application.CreateForm(TdmBase, dmBase);
  frmSplash.Show;
  frmSplash.Update;
  Application.Initialize;
  repeat Application.ProcessMessages;
  until frmSplash.CloseQuery;
  frmSplash.Hide;
  frmSplash.Free;
  frmLogin.ShowModal;
  Application.Run;
  frmlogin.Hide;
  frmlogin.Close;
  Application.Run;
end.
