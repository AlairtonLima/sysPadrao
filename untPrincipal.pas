unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.Menus, System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, IdBaseComponent, IdComponent, IdIPWatch;

type
  TfrmPrincipal = class(TForm)
    mnuPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    Financeiro1: TMenuItem;
    Movimentos1: TMenuItem;
    Configuraes1: TMenuItem;
    Ajuda1: TMenuItem;
    DadosdaEmpresa1: TMenuItem;
    N1: TMenuItem;
    Fornecedores1: TMenuItem;
    Clientes1: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    Caixa1: TMenuItem;
    N3: TMenuItem;
    APagar1: TMenuItem;
    AReceber1: TMenuItem;
    FluxodeCaixa1: TMenuItem;
    N4: TMenuItem;
    Credirio1: TMenuItem;
    EfetuarVenda1: TMenuItem;
    CanalYoutube1: TMenuItem;
    Registro1: TMenuItem;
    N5: TMenuItem;
    Sobre1: TMenuItem;
    Atualizar1: TMenuItem;
    Registro2: TMenuItem;
    N6: TMenuItem;
    Auditoria1: TMenuItem;
    pnlInforma: TPanel;
    stsInforma: TStatusBar;
    clbIcones: TCoolBar;
    imgFundo: TImage;
    imgIconesBarra: TImageList;
    imgIconesMenu: TImageList;
    tmrRelogio: TTimer;
    idMyIP: TIdIPWatch;
    opcExibir: TMenuItem;
    N7: TMenuItem;
    Mesas1: TMenuItem;
    Comandas1: TMenuItem;
    N8: TMenuItem;
    abelasdeApoio1: TMenuItem;
    U1: TMenuItem;
    Bancos1: TMenuItem;
    Categorias1: TMenuItem;
    Produtos1: TMenuItem;
    Colaboradores1: TMenuItem;
    Funes1: TMenuItem;
    Bancos2: TMenuItem;
    Cartes1: TMenuItem;
    Impressoras1: TMenuItem;
    ComputadoresMobiles1: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    Visualizar1: TMenuItem;
    elaCheia1: TMenuItem;
    BarraFerramentas1: TMenuItem;
    IconesGrandes1: TMenuItem;
    IconesMedios1: TMenuItem;
    IconesModernos1: TMenuItem;
    N11: TMenuItem;
    GerenciamentoLocal1: TMenuItem;
    Delivery1: TMenuItem;
    N12: TMenuItem;
    tlbIcones: TToolBar;
    tbtColab: TToolButton;
    tbtFornec: TToolButton;
    tbtClientes: TToolButton;
    tbtProdutos: TToolButton;
    ToolButton5: TToolButton;
    tbtCaixa: TToolButton;
    tbtHistCaixa: TToolButton;
    tbtPagar: TToolButton;
    tbtReceber: TToolButton;
    btnFiados: TToolButton;
    ToolButton9: TToolButton;
    tbtOrca: TToolButton;
    tbtVenda: TToolButton;
    btnPdvFiscal: TToolButton;
    ToolButton13: TToolButton;
    tbtSair: TToolButton;
    N13: TMenuItem;
    HistricoCaixa1: TMenuItem;
    Balco1: TMenuItem;
    Entrega1: TMenuItem;
    VendaRpida1: TMenuItem;
    N14: TMenuItem;
    FiladePedidos1: TMenuItem;
    N15: TMenuItem;
    Sistema1: TMenuItem;
    Backup1: TMenuItem;
    GerenciarUsurios1: TMenuItem;
    rocarSenha1: TMenuItem;
    BloquearTela1: TMenuItem;
    NveisdeAcesso1: TMenuItem;
    ToolButton1: TToolButton;
    Relatrios1: TMenuItem;
    N16: TMenuItem;
    Rel11: TMenuItem;
    Rel21: TMenuItem;
    imgIconesTelas: TImageList;
    procedure ToolButton20Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DadosdaEmpresa1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure tmrRelogioTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    Procedure MostraDicas(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure opcExibirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbtSairClick(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Colaboradores1Click(Sender: TObject);
    procedure tbtColabClick(Sender: TObject);
    procedure BloquearTela1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure tbtClientesClick(Sender: TObject);
    procedure tbtFornecClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure tbtProdutosClick(Sender: TObject);
    procedure tbtHistCaixaClick(Sender: TObject);
    procedure APagar1Click(Sender: TObject);
    procedure tbtPagarClick(Sender: TObject);
    procedure HistricoCaixa1Click(Sender: TObject);
    procedure btnFiadosClick(Sender: TObject);
    procedure Credirio1Click(Sender: TObject);
    procedure tbtCaixaClick(Sender: TObject);
    procedure Caixa1Click(Sender: TObject);
    procedure tbtReceberClick(Sender: TObject);
    procedure AReceber1Click(Sender: TObject);
    procedure FluxodeCaixa1Click(Sender: TObject);
    procedure Sistema1Click(Sender: TObject);
    procedure Auditoria1Click(Sender: TObject);
    procedure Registro2Click(Sender: TObject);
    procedure FiladePedidos1Click(Sender: TObject);
    procedure btnPdvFiscalClick(Sender: TObject);
    procedure VendaRpida1Click(Sender: TObject);
    procedure EfetuarVenda1Click(Sender: TObject);
    procedure Balco1Click(Sender: TObject);
    procedure Entrega1Click(Sender: TObject);
    procedure Backup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses untEmpresa, untMostraData, untFornec, untColab, untLogin, untClientes,
  untProdutos, untHistCx, untApagar, untFiado, untCaixa, untAreceber,
  untFluxoCx, untParSistema, untAudit, untRegistro, untFilaPedidos,
  untVendaRapida, untMesaCom, untPedBalcao, untEntrega;

procedure TfrmPrincipal.APagar1Click(Sender: TObject);
begin
 With TfrmApagar.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.AReceber1Click(Sender: TObject);
begin
  With TfrmAreceber.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.Auditoria1Click(Sender: TObject);
begin
 With TfrmAudit.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.Backup1Click(Sender: TObject);
begin
 WinExec('C:\PROSISTEMAS\SCA\scaBackup.exe',SW_SHOW);
end;

procedure TfrmPrincipal.Balco1Click(Sender: TObject);
begin
 With TfrmPedBalcao.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.BloquearTela1Click(Sender: TObject);
begin
 With TfrmLogin.Create(Nil) Do
 begin
   ShowModal;
   Free;
 end;
end;

procedure TfrmPrincipal.btnFiadosClick(Sender: TObject);
begin
 With TfrmFiado.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.btnPdvFiscalClick(Sender: TObject);
begin
 With TfrmFilaPedidos.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.Caixa1Click(Sender: TObject);
begin
 With TfrmCaixa.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
 With TfrmClientes.Create(Nil) Do
 begin
   ShowModal;
   Free;
 end;
end;

procedure TfrmPrincipal.Colaboradores1Click(Sender: TObject);
begin
 With TfrmColab.Create(Nil) Do
 begin
   ShowModal;
   Free;
 end;
end;

procedure TfrmPrincipal.Credirio1Click(Sender: TObject);
begin
 With TfrmFiado.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.DadosdaEmpresa1Click(Sender: TObject);
begin
 With TfrmEmpresa.Create(nil) do
 begin
   ShowModal;
   Free;
 end;
end;

procedure TfrmPrincipal.EfetuarVenda1Click(Sender: TObject);
begin
 With TfrmMesaCom.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.Entrega1Click(Sender: TObject);
begin
 With TfrmEntrega.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.opcExibirClick(Sender: TObject);
begin
  opcExibir.Checked  := not opcExibir.Checked;
  pnlInforma.Visible := not pnlInforma.Visible;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
 With TfrmProdutos.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.Registro2Click(Sender: TObject);
begin
 With TfrmRegistro.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.FiladePedidos1Click(Sender: TObject);
begin
 With TfrmFilaPedidos.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.FluxodeCaixa1Click(Sender: TObject);
begin
 With TfrmFluxoCx.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 CanClose := Application.MessageBox('Deseja Sair do Sistema?',
'Fechar Programa',mb_Iconquestion+MB_YesNO)=IDYES;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
 Application.OnHint := MostraDicas;
end;

procedure TfrmPrincipal.MostraDicas(Sender: TObject);
Begin
 frmPrincipal.stsInforma.Panels[0].Text := Application.Hint;
End;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
 stsInforma.Panels[3].Text := MostraData(Date);
 stsInforma.Panels[6].Text := idMyIP.LocalIP;
end;

procedure TfrmPrincipal.Fornecedores1Click(Sender: TObject);
begin
 With TfrmFornec.Create(nil) Do
 begin
  ShowModal;
  Free;
 end;
end;

procedure TfrmPrincipal.HistricoCaixa1Click(Sender: TObject);
begin
 With TfrmHistCx.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
if Application.MessageBox('Deseja Sair do Sistema?','Fechar Programa',mb_Iconquestion+MB_YesNO)=IDYES Then
Halt;
end;

procedure TfrmPrincipal.Sistema1Click(Sender: TObject);
begin
 With TfrmParSistema.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.tbtCaixaClick(Sender: TObject);
begin
 With TfrmCaixa.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.tbtClientesClick(Sender: TObject);
begin
 With TfrmFornec.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.tbtColabClick(Sender: TObject);
begin
 With TfrmColab.Create(Nil) Do
 begin
   ShowModal;
   Free;
 end;
end;

procedure TfrmPrincipal.tbtFornecClick(Sender: TObject);
begin
 With TfrmClientes.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.tbtHistCaixaClick(Sender: TObject);
begin
 With TfrmHistCx.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.tbtPagarClick(Sender: TObject);
begin
 With TfrmApagar.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.tbtProdutosClick(Sender: TObject);
begin
 With TfrmProdutos.Create(Nil) Do
 Begin
   Showmodal;
   Free;
 End;
end;

procedure TfrmPrincipal.tbtReceberClick(Sender: TObject);
begin
 With TfrmAreceber.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipal.tbtSairClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
 stsInforma.panels[4].Text := TimeToStr(Time);
end;

procedure TfrmPrincipal.tmrRelogioTimer(Sender: TObject);
begin
 stsInforma.panels[4].Text := TimeToStr(Time);
end;

procedure TfrmPrincipal.ToolButton20Click(Sender: TObject);
begin
  If Application.MessageBox('Deseja Sair do Sistema?','Fechar Programa',mb_Iconquestion+MB_YesNO)=IDYES Then
  Halt;
end;

procedure TfrmPrincipal.VendaRpida1Click(Sender: TObject);
begin
 With TfrmVendaRapida.Create(Nil) Do
 Begin
   ShowModal;
   Free;
 End;
end;

end.
