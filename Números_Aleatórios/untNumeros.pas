unit untNumeros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.CheckLst, Vcl.ComCtrls, Vcl.Mask, Vcl.ImgList, Vcl.Clipbrd, Vcl.Menus,
  Vcl.Imaging.GIFImg, untFuncao;

type
  TfrmNumeros = class(TForm)
    pgcJogos: TPageControl;
    pgcMegaSena: TTabSheet;
    pgcConferir: TTabSheet;
    pnlTitulo: TPanel;
    pnlGeral: TPanel;
    memoNumeros: TMemo;
    pnlOpcao: TPanel;
    btnSalvar: TBitBtn;
    btnGerar: TBitBtn;
    btnFechar: TBitBtn;
    btnLimpar: TBitBtn;
    pnlBotao: TPanel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    lblTotalJogos: TLabel;
    btnMarcar: TSpeedButton;
    btnAlterar: TSpeedButton;
    lblAviso: TLabel;
    lblTotalSair: TLabel;
    btnSalvarSairam: TSpeedButton;
    chkNumSair: TCheckBox;
    chklst1: TCheckListBox;
    edtQuantidadeGerar: TEdit;
    ProgressBar1: TProgressBar;
    edtTotalJogos: TEdit;
    chkTotalJogos: TCheckBox;
    edtMaisSairam: TEdit;
    edtTotalSair: TEdit;
    pnlResultado: TPanel;
    Panel2: TPanel;
    pnlEdit: TPanel;
    edtConferir: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    memoResultado: TMemo;
    Panel1: TPanel;
    Label5: TLabel;
    memoConferir: TMemo;
    Panel3: TPanel;
    Label6: TLabel;
    OpenDialog: TOpenDialog;
    btnCarregarJogos: TSpeedButton;
    Label7: TLabel;
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    Label9: TLabel;
    btnConferir: TBitBtn;
    Label8: TLabel;
    popNenhumaAcao: TPopupMenu;
    img1: TImage;
    pgcLotoFacil: TTabSheet;
    Panel5: TPanel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label10: TLabel;
    Label11: TLabel;
    lblTotalJogosLt: TLabel;
    btnMarcarLt: TSpeedButton;
    btnAlterarLt: TSpeedButton;
    lblAvisoLt: TLabel;
    lblTotalSairLt: TLabel;
    btnSalvarSairamLt: TSpeedButton;
    chkNumSairLt: TCheckBox;
    chklst1Lt: TCheckListBox;
    edtQuantidadeGerarLt: TEdit;
    ProgressBar2: TProgressBar;
    edtTotalJogosLt: TEdit;
    chkTotalJogosLt: TCheckBox;
    edtMaisSairamLt: TEdit;
    edtTotalSairLt: TEdit;
    Panel6: TPanel;
    memoNumerosLt: TMemo;
    Panel7: TPanel;
    btnSalvarLt: TBitBtn;
    btnGerarLt: TBitBtn;
    btnFecharLt: TBitBtn;
    btnLimparLt: TBitBtn;
    Panel8: TPanel;
    Image1: TImage;
    rdgJogosConferir: TRadioGroup;
    rdgEscolha: TRadioGroup;
    SaveDialog: TSaveDialog;
    pgcLotomania: TTabSheet;
    Panel9: TPanel;
    Image2: TImage;
    Panel10: TPanel;
    memoNumerosLm: TMemo;
    Panel11: TPanel;
    btnSalvarLm: TBitBtn;
    btnGerarLm: TBitBtn;
    btnFecharLm: TBitBtn;
    btnLimparLm: TBitBtn;
    Panel12: TPanel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label12: TLabel;
    Label13: TLabel;
    lblTotalJogosLm: TLabel;
    btnMarcarLm: TSpeedButton;
    btnAlterarLm: TSpeedButton;
    lblAvisoLm: TLabel;
    lblTotalSairLm: TLabel;
    btnSalvarSairamLm: TSpeedButton;
    chkNumSairLm: TCheckBox;
    chklst1Lm: TCheckListBox;
    edtQuantidadeGerarLm: TEdit;
    ProgressBar3: TProgressBar;
    edtTotalJogosLm: TEdit;
    chkTotalJogosLm: TCheckBox;
    edtMaisSairamLm: TEdit;
    edtTotalSairLm: TEdit;
    pgcQuina: TTabSheet;
    Panel13: TPanel;
    Image3: TImage;
    Panel14: TPanel;
    memoNumerosQ: TMemo;
    Panel15: TPanel;
    btnSalvarQ: TBitBtn;
    btnGerarQ: TBitBtn;
    btnFecharQ: TBitBtn;
    btnLimparQ: TBitBtn;
    Panel16: TPanel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Label14: TLabel;
    Label15: TLabel;
    lblTotalJogosQ: TLabel;
    btnMarcarQ: TSpeedButton;
    btnAlterarQ: TSpeedButton;
    lblAvisoQ: TLabel;
    lblTotalSairQ: TLabel;
    btnSalvarSairamQ: TSpeedButton;
    chkNumSairQ: TCheckBox;
    chklst1Q: TCheckListBox;
    edtQuantidadeGerarQ: TEdit;
    ProgressBar4: TProgressBar;
    edtTotalJogosQ: TEdit;
    chkTotalJogosQ: TCheckBox;
    edtMaisSairamQ: TEdit;
    edtTotalSairQ: TEdit;
    StatusBar: TStatusBar;
    Timer: TTimer;
    rdgSelecionarJogo: TRadioGroup;
    procedure btnFecharClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure chkTotalJogosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMarcarClick(Sender: TObject);
    procedure chkNumSairClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure chklst1Click(Sender: TObject);
    procedure edtMaisSairamKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarSairamClick(Sender: TObject);
    procedure btnCarregarJogosClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnConferirClick(Sender: TObject);
    procedure edtConferirKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rdgJogosConferirClick(Sender: TObject);
    procedure pgcJogosChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure rdgSelecionarJogoClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbilitaAbas(Abas: TAbas);
    procedure OcultarSheets(PageControl: TPageControl);
    procedure ShowHint(Senser: TObject);
    procedure LimparTela(btnMarcar: TSpeedButton; chkNumSair, chkTotalJogos: TCheckBox; chkLst: TCheckListBox; memoNumeros: TMemo);
  public
    { Public declarations }
  end;

var
  frmNumeros: TfrmNumeros;

implementation

{$R *.dfm}

procedure TfrmNumeros.AbilitaAbas(Abas: TAbas);
var bAtiva: Boolean;
begin
  bAtiva := False;
  if Abas = aNone then
    begin
      bAtiva := True;
    end;
  pgcJogos.Pages[0].TabVisible := bAtiva;
  pgcJogos.Pages[1].TabVisible := bAtiva;
  pgcJogos.Pages[2].TabVisible := bAtiva;
  pgcJogos.Pages[3].TabVisible := bAtiva;
  //pgcJogos.Pages[4].TabVisible := bAtiva;
  case Abas of
    aMegaSena: begin
                 pgcJogos.Pages[0].TabVisible := not bAtiva;
                 pgcJogos.Pages[0].Show;
                 //pgcJogos.Pages[4].TabVisible := not bAtiva;
               end;
    aLotofacil: begin
                  pgcJogos.Pages[1].TabVisible := not bAtiva;
                  pgcJogos.Pages[1].Show;
                  //pgcJogos.Pages[4].TabVisible := not bAtiva;
                end;
    aLotomania: begin
                  pgcJogos.Pages[2].TabVisible := not bAtiva;
                  pgcJogos.Pages[2].Show;
                  //pgcJogos.Pages[4].TabVisible := not bAtiva;
                end;
    aQuina: begin
              pgcJogos.Pages[3].TabVisible := not bAtiva;
              pgcJogos.Pages[3].Show;
              //pgcJogos.Pages[4].TabVisible := not bAtiva;
            end;
  end;
end;

procedure TfrmNumeros.btnAlterarClick(Sender: TObject);
begin
  case pgcJogos.ActivePageIndex of
     0: begin
          edtMaisSairam.ReadOnly := False;
          edtTotalSair.ReadOnly := False;
          edtTotalSair.SetFocus;
          btnAlterar.Enabled := False;
          btnSalvarSairam.Enabled := True;
        end;
     1: begin
          edtMaisSairamLt.ReadOnly := False;
          edtTotalSairLt.ReadOnly := False;
          edtTotalSairLt.SetFocus;
          btnAlterarLt.Enabled := False;
          btnSalvarSairamLt.Enabled := True;
        end;
     2: begin
          edtMaisSairamLm.ReadOnly := False;
          edtTotalSairLm.ReadOnly := False;
          edtTotalSairLm.SetFocus;
          btnAlterarLm.Enabled := False;
          btnSalvarSairamLm.Enabled := True;
        end;
     3: begin
          edtMaisSairamQ.ReadOnly := False;
          edtTotalSairQ.ReadOnly := False;
          edtTotalSairQ.SetFocus;
          btnAlterarQ.Enabled := False;
          btnSalvarSairamQ.Enabled := True;
        end;
  end;
end;

procedure TfrmNumeros.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNumeros.btnGerarClick(Sender: TObject);
var iQuantidadeGerar, iTotalJogos, iTotalSair, iQtdeInicio, iQtdeFinal, iValores: Integer;
begin
  iQtdeInicio := 0;
  iQtdeFinal := 0;
  iValores := 0;

  btnSalvarSairamClick(Self);

  iQuantidadeGerar := 0;
  iTotalJogos := 1;
  iTotalSair := 0;

  case pgcJogos.ActivePageIndex of
    // Mega Sena
    0: begin
         memoNumeros.Clear;
         iQtdeInicio := 6;
         iQtdeFinal := 15;
         iValores := 60;

         if Trim(edtQuantidadeGerar.Text) <> '' then
           begin
             iQuantidadeGerar := StrToInt(edtQuantidadeGerar.Text);
           end;

         if Trim(edtTotalJogos.Text) <> '' then
           begin
             iTotalJogos := StrToInt(edtTotalJogos.Text);
           end;

         if Trim(edtTotalSair.Text) <> '' then
           begin
             iTotalSair := StrToInt(edtTotalSair.Text);
           end;
           { Fun��o usada na gera��o dos jogos }
           GerarJogo(edtMaisSairam, ProgressBar1, chkNumSair, chklst1, memoNumeros, iValores,
                     iQtdeInicio, iQtdeFinal, iQuantidadeGerar, iTotalJogos, iTotalSair);
       end;
    // Lotof�cil
    1: begin
         memoNumerosLt.Clear;
         iQtdeInicio := 15;
         iQtdeFinal := 20;
         iValores := 25;

         if Trim(edtQuantidadeGerarLt.Text) <> '' then
           begin
             iQuantidadeGerar := StrToInt(edtQuantidadeGerarLt.Text);
           end;

         if Trim(edtTotalJogosLt.Text) <> '' then
           begin
             iTotalJogos := StrToInt(edtTotalJogosLt.Text);
           end;

         if Trim(edtTotalSairLt.Text) <> '' then
           begin
             iTotalSair := StrToInt(edtTotalSairLt.Text);
           end;
           { Fun��o usada na gera��o dos jogos }
           GerarJogo(edtMaisSairamLt, ProgressBar2, chkNumSairLt, chklst1Lt, memoNumerosLt, iValores,
                     iQtdeInicio, iQtdeFinal, iQuantidadeGerar, iTotalJogos, iTotalSair);
       end;
    // Lotomania
    2: begin
         memoNumerosLm.Clear;
         iQtdeInicio := 50;
         iQtdeFinal := 50;
         iValores := 100;

         if Trim(edtQuantidadeGerarLt.Text) <> '' then
           begin
             iQuantidadeGerar := StrToInt(edtQuantidadeGerarLm.Text);
           end;

         if Trim(edtTotalJogosLm.Text) <> '' then
           begin
             iTotalJogos := StrToInt(edtTotalJogosLm.Text);
           end;

         if Trim(edtTotalSairLm.Text) <> '' then
           begin
             iTotalSair := StrToInt(edtTotalSairLm.Text);
           end;
           { Fun��o usada na gera��o dos jogos }
           GerarJogo(edtMaisSairamLm, ProgressBar3, chkNumSairLm, chklst1Lm, memoNumerosLm, iValores,
                     iQtdeInicio, iQtdeFinal, iQuantidadeGerar, iTotalJogos, iTotalSair);
       end;
    // Quina
    3: begin
         memoNumerosQ.Clear;
         iQtdeInicio := 5;
         iQtdeFinal := 7;
         iValores := 80;

         if Trim(edtQuantidadeGerarQ.Text) <> '' then
           begin
             iQuantidadeGerar := StrToInt(edtQuantidadeGerarQ.Text);
           end;

         if Trim(edtTotalJogosQ.Text) <> '' then
           begin
             iTotalJogos := StrToInt(edtTotalJogosQ.Text);
           end;

         if Trim(edtTotalSairQ.Text) <> '' then
           begin
             iTotalSair := StrToInt(edtTotalSairQ.Text);
           end;
           { Fun��o usada na gera��o dos jogos }
           GerarJogo(edtMaisSairamQ, ProgressBar4, chkNumSairQ, chklst1Q, memoNumerosQ, iValores,
                     iQtdeInicio, iQtdeFinal, iQuantidadeGerar, iTotalJogos, iTotalSair);
       end;
  end;
end;

procedure TfrmNumeros.btnLimparClick(Sender: TObject);
begin
  case pgcJogos.ActivePageIndex of
     0: begin
          memoNumeros.Lines.Clear;
        end;
     1: begin
          memoNumerosLt.Lines.Clear;
        end;
     2: begin
          memoNumerosLm.Lines.Clear;
        end;
     3: begin
          memoNumerosQ.Lines.Clear;
        end;
  end;
end;

procedure TfrmNumeros.btnSalvarClick(Sender: TObject);
begin
  try
     case pgcJogos.ActivePageIndex of
        0: begin
             SaveDialog.FileName := 'numeros_megasena.txt';
           end;
        1: begin
             SaveDialog.FileName := 'numeros_lotofacil.txt';
           end;
        2: begin
             SaveDialog.FileName := 'numeros_lotomania.txt';
           end;
        3: begin
             SaveDialog.FileName := 'numeros_quina.txt';
           end;
     end;
     { Salvando os n�meros gerados em arquivo TXT }
     if SaveDialog.Execute then
        begin
           if FileExists(SaveDialog.FileName) then
            begin
             if Application.MessageBox('Existe um arquivo salvo! Deseja substitu�-lo?', 'Aten��o!',
                                       MB_YESNO + MB_ICONQUESTION) = mrNo then
               begin
                 Exit;
               end
             else
               begin
                 case pgcJogos.ActivePageIndex of
                   0: begin
                        memoNumeros.Lines.SaveToFile(SaveDialog.FileName);
                      end;
                   1: begin
                        memoNumerosLt.Lines.SaveToFile(SaveDialog.FileName);
                      end;
                   2: begin
                        memoNumerosLm.Lines.SaveToFile(SaveDialog.FileName);
                      end;
                   3: begin
                        memoNumerosQ.Lines.SaveToFile(SaveDialog.FileName);
                      end;
                 end;
                 ExecutePrograma(SaveDialog.FileName, '');
               end;
            end
           else
            begin
              DeleteFile(SaveDialog.FileName);
              case pgcJogos.ActivePageIndex of
                0: begin
                     memoNumeros.Lines.SaveToFile(SaveDialog.FileName);
                   end;
                1: begin
                     memoNumerosLt.Lines.SaveToFile(SaveDialog.FileName);
                   end;
                2: begin
                     memoNumerosLm.Lines.SaveToFile(SaveDialog.FileName);
                   end;
                3: begin
                     memoNumerosQ.Lines.SaveToFile(SaveDialog.FileName);
                   end;
              end;
              ExecutePrograma(SaveDialog.FileName, '');
            end;
        end;
     { ------------------------------------------------- }
  except
    Application.MessageBox('Erro durante a gera��o do arquivo!', 'Aten��o!', MB_OK + MB_ICONERROR);
  end;
end;

procedure TfrmNumeros.chklst1Click(Sender: TObject);
var i: Integer;
    bTrocar: Boolean;
begin
  bTrocar := False;
  case pgcJogos.ActivePageIndex of
     0: begin
          for i := 0 to chklst1.Items.Count - 1 do
            begin
              if chklst1.Checked[i] = True then
                begin
                  chkNumSair.Enabled := False;
                  btnMarcar.Caption := 'Desmarcar todos n�meros';
                  bTrocar := True;
                  Exit;
                end;
            end;
          if bTrocar = False then
            begin
              btnMarcar.Caption := 'Marcar todos n�meros';
            end;
          chkNumSair.Enabled := True;
        end;
     1: begin
          for i := 0 to chklst1Lt.Items.Count - 1 do
            begin
              if chklst1Lt.Checked[i] = True then
                begin
                  chkNumSairLt.Enabled := False;
                  btnMarcarLt.Caption := 'Desmarcar todos n�meros';
                  bTrocar := True;
                  Exit;
                end;
            end;
          if bTrocar = False then
            begin
              btnMarcarLt.Caption := 'Marcar todos n�meros';
            end;
          chkNumSairLt.Enabled := True;
        end;
     2: begin
          for i := 0 to chklst1Lm.Items.Count - 1 do
            begin
              if chklst1Lm.Checked[i] = True then
                begin
                  chkNumSairLm.Enabled := False;
                  btnMarcarLm.Caption := 'Desmarcar todos n�meros';
                  bTrocar := True;
                  Exit;
                end;
            end;
          if bTrocar = False then
            begin
              btnMarcarLm.Caption := 'Marcar todos n�meros';
            end;
          chkNumSairLm.Enabled := True;
        end;
     3: begin
          for i := 0 to chklst1Q.Items.Count - 1 do
            begin
              if chklst1Q.Checked[i] = True then
                begin
                  chkNumSairQ.Enabled := False;
                  btnMarcarQ.Caption := 'Desmarcar todos n�meros';
                  bTrocar := True;
                  Exit;
                end;
            end;
          if bTrocar = False then
            begin
              btnMarcarQ.Caption := 'Marcar todos n�meros';
            end;
          chkNumSairQ.Enabled := True;
        end;
  end;
end;

procedure TfrmNumeros.chkNumSairClick(Sender: TObject);
begin
  case pgcJogos.ActivePageIndex of
     0: begin
          if chkNumSair.Checked then
            begin
              btnMarcar.Enabled := False;
              chklst1.Enabled := False;

              edtMaisSairam.Visible := True;
              btnAlterar.Visible := True;
              lblAviso.Visible := True;
              btnSalvarSairam.Visible := True;

              edtTotalSair.Visible := True;
              lblTotalSair.Visible := True;
            end
          else
            begin
              btnMarcar.Enabled := True;
              chklst1.Enabled := True;

              edtMaisSairam.Visible := False;
              btnAlterar.Visible := False;
              lblAviso.Visible := False;
              btnSalvarSairam.Visible := False;

              edtTotalSair.Visible := False;
              lblTotalSair.Visible := False;
            end;
        end;
     1: begin
          if chkNumSairLt.Checked then
            begin
              btnMarcarLt.Enabled := False;
              chklst1Lt.Enabled := False;

              edtMaisSairamLt.Visible := True;
              btnAlterarLt.Visible := True;
              lblAvisoLt.Visible := True;
              btnSalvarSairamLt.Visible := True;

              edtTotalSairLt.Visible := True;
              lblTotalSairLt.Visible := True;
            end
          else
            begin
              btnMarcarLt.Enabled := True;
              chklst1Lt.Enabled := True;

              edtMaisSairamLt.Visible := False;
              btnAlterarLt.Visible := False;
              lblAvisoLt.Visible := False;
              btnSalvarSairamLt.Visible := False;

              edtTotalSairLt.Visible := False;
              lblTotalSairLt.Visible := False;
            end;
        end;
     2: begin
          if chkNumSairLm.Checked then
            begin
              btnMarcarLm.Enabled := False;
              chklst1Lm.Enabled := False;

              edtMaisSairamLm.Visible := True;
              btnAlterarLm.Visible := True;
              lblAvisoLm.Visible := True;
              btnSalvarSairamLm.Visible := True;

              edtTotalSairLm.Visible := True;
              lblTotalSairLm.Visible := True;
            end
          else
            begin
              btnMarcarLm.Enabled := True;
              chklst1Lm.Enabled := True;

              edtMaisSairamLm.Visible := False;
              btnAlterarLm.Visible := False;
              lblAvisoLm.Visible := False;
              btnSalvarSairamLm.Visible := False;

              edtTotalSairLm.Visible := False;
              lblTotalSairLm.Visible := False;
            end;
        end;
     3: begin
          if chkNumSairQ.Checked then
            begin
              btnMarcarQ.Enabled := False;
              chklst1Q.Enabled := False;

              edtMaisSairamQ.Visible := True;
              btnAlterarQ.Visible := True;
              lblAvisoQ.Visible := True;
              btnSalvarSairamQ.Visible := True;

              edtTotalSairQ.Visible := True;
              lblTotalSairQ.Visible := True;
            end
          else
            begin
              btnMarcarQ.Enabled := True;
              chklst1Q.Enabled := True;

              edtMaisSairamQ.Visible := False;
              btnAlterarQ.Visible := False;
              lblAvisoQ.Visible := False;
              btnSalvarSairamQ.Visible := False;

              edtTotalSairQ.Visible := False;
              lblTotalSairQ.Visible := False;
            end;
        end;
  end;
end;

procedure TfrmNumeros.chkTotalJogosClick(Sender: TObject);
begin
  case pgcJogos.ActivePageIndex of
     0: begin
          if chkTotalJogos.Checked then
            begin
              edtTotalJogos.Visible := True;
              lblTotalJogos.Visible := True;
            end
          else
            begin
              edtTotalJogos.Clear;
              edtTotalJogos.Visible := False;
              lblTotalJogos.Visible := False;
            end;
        end;
     1: begin
          if chkTotalJogosLt.Checked then
            begin
              edtTotalJogosLt.Visible := True;
              lblTotalJogosLt.Visible := True;
            end
          else
            begin
              edtTotalJogosLt.Clear;
              edtTotalJogosLt.Visible := False;
              lblTotalJogosLt.Visible := False;
            end;
        end;
     2: begin
          if chkTotalJogosLm.Checked then
            begin
              edtTotalJogosLm.Visible := True;
              lblTotalJogosLm.Visible := True;
            end
          else
            begin
              edtTotalJogosLm.Clear;
              edtTotalJogosLm.Visible := False;
              lblTotalJogosLm.Visible := False;
            end;
        end;
     3: begin
          if chkTotalJogosQ.Checked then
            begin
              edtTotalJogosQ.Visible := True;
              lblTotalJogosQ.Visible := True;
            end
          else
            begin
              edtTotalJogosQ.Clear;
              edtTotalJogosQ.Visible := False;
              lblTotalJogosQ.Visible := False;
            end;
        end;
  end;
end;

procedure TfrmNumeros.edtConferirKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((ssCtrl in Shift) AND (Key = ord('V'))) then
   begin
     if Clipboard.HasFormat(CF_TEXT) then
       ClipBoard.Clear;

       edtMaisSairam.SelText := '';
       edtConferir.SelText := '';

     Key := 0;
   end;
end;

procedure TfrmNumeros.edtMaisSairamKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',Chr(8), Chr(127), Chr(44)]) then
     Key:= #0;
end;

procedure TfrmNumeros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmNumeros.Release;
end;

procedure TfrmNumeros.FormCreate(Sender: TObject);
begin
  Application.OnHint := ShowHint; //para abilitar a frase no componente
  AbilitaAbas(aMegaSena);
  //OcultarSheets(pgcJogos);
end;

procedure TfrmNumeros.LimparTela(btnMarcar: TSpeedButton; chkNumSair, chkTotalJogos: TCheckBox; chkLst: TCheckListBox; memoNumeros: TMemo);
var i: Integer;
begin
  try
    btnMarcar.Caption := 'Marcar todos n�meros';
    chkNumSair.Checked := False;
    chkTotalJogos.Checked := False;
    for i := 0 to chkLst.Items.Count - 1 do
      begin
        if chklst.Checked[i] = True then
          begin
            chklst.Checked[i] := False;
          end;
      end;
    memoNumeros.Lines.Clear;
  except
    { -------------- }
  end;
end;

procedure TfrmNumeros.OcultarSheets(PageControl: TPageControl);
var iPage: Integer;
begin
  for iPage := 0 to PageControl.PageCount - 1 do
    PageControl.Pages[iPage].TabVisible := False;

  if ( PageControl.PageCount > 0 ) then
    PageControl.ActivePage := PageControl.Pages[0];

  PageControl.Style := tsButtons;
end;

procedure TfrmNumeros.pgcJogosChange(Sender: TObject);
begin
  case pgcJogos.ActivePageIndex of
    0: begin
         rdgSelecionarJogo.Enabled := True;
       end;
    1: begin
         rdgSelecionarJogo.Enabled := True;
       end;
    2: begin
         rdgSelecionarJogo.Enabled := True;
       end;
    3: begin
         rdgSelecionarJogo.Enabled := True;
       end;
    4: begin
         rdgSelecionarJogo.Enabled := False;
         case rdgSelecionarJogo.ItemIndex of
           0: begin
                LimparTela(btnMarcar, chkNumSair, chkTotalJogos, chklst1, memoNumeros);
                edtConferir.MaxLength := 17;
                rdgJogosConferir.ItemIndex := 0;
              end;
           1: begin
                LimparTela(btnMarcarLt, chkNumSairLt, chkTotalJogosLt, chklst1Lt, memoNumerosLt);
                edtConferir.MaxLength := 44;
                rdgJogosConferir.ItemIndex := 1;
              end;
           2: begin
                LimparTela(btnMarcarLm, chkNumSairLm, chkTotalJogosLm, chklst1Lm, memoNumerosLm);
                edtConferir.MaxLength := 60;
                rdgJogosConferir.ItemIndex := 2;
              end;
           3: begin
                LimparTela(btnMarcarQ, chkNumSairQ, chkTotalJogosQ, chklst1Q, memoNumerosQ);
                edtConferir.MaxLength := 14;
                rdgJogosConferir.ItemIndex := 3;
              end;
         end;
       end;
  end;
end;

procedure TfrmNumeros.rdgSelecionarJogoClick(Sender: TObject);
begin
  case rdgSelecionarJogo.ItemIndex of
    0: begin
         AbilitaAbas(aMegaSena);
       end;
    1: begin
         AbilitaAbas(aLotofacil);
       end;
    2: begin
         AbilitaAbas(aLotomania);
       end;
    3: begin
         AbilitaAbas(aQuina);
       end;
  end;
end;

procedure TfrmNumeros.rdgJogosConferirClick(Sender: TObject);
begin
  case rdgJogosConferir.ItemIndex of
    0: begin
         edtConferir.MaxLength := 17;
       end;
    1: begin
         edtConferir.MaxLength := 44;
       end;
    2: begin
         edtConferir.MaxLength := 60;
       end;
    3: begin
         edtConferir.MaxLength := 14;
       end;
  end;
end;

procedure TfrmNumeros.ShowHint(Senser: TObject);
begin
  Statusbar.Panels[0].Text := GetLongHint(Application.Hint); //para aparecer a frase no statusbar

end;

procedure TfrmNumeros.SpeedButton2Click(Sender: TObject);
begin
  try
     case rdgJogosConferir.ItemIndex of
        0: begin
             SaveDialog.FileName := 'resultado_megasena.txt';
           end;
        1: begin
             SaveDialog.FileName := 'resultado_lotofacil.txt';
           end;
        2: begin
             SaveDialog.FileName := 'resultado_lotomania.txt';
           end;
        3: begin
             SaveDialog.FileName := 'resultado_quina.txt';
           end;
     end;
     { Salvando o resultado gerado em arquivo TXT }
     if SaveDialog.Execute then
        begin
           if FileExists(SaveDialog.FileName) then
            begin
             if Application.MessageBox('Existe um arquivo salvo! Deseja substitu�-lo?', 'Aten��o!',
                                       MB_YESNO + MB_ICONQUESTION) = mrNo then
               begin
                 Exit;
               end
             else
               begin
                 memoResultado.Lines.SaveToFile(SaveDialog.FileName);
                 ExecutePrograma(SaveDialog.FileName, '');
               end;
            end
           else
            begin
              DeleteFile(SaveDialog.FileName);
              memoResultado.Lines.SaveToFile(SaveDialog.FileName);
              ExecutePrograma(SaveDialog.FileName, '');
            end;
        end;
     { ------------------------------------------------- }
  except
    Application.MessageBox('Erro durante a gera��o do arquivo!', 'Aten��o!', MB_OK + MB_ICONERROR);
  end;
end;

procedure TfrmNumeros.TimerTimer(Sender: TObject);
begin
  Statusbar.Panels [1].Text := ' '+formatdatetime ('dddd","dd" de "mmmm" de "yyyy',now);// para data
  Statusbar.Panels [2].Text := ' '+formatdatetime ('hh:mm:ss',now);//para hora
end;

procedure TfrmNumeros.btnCarregarJogosClick(Sender: TObject);
begin
  if OpenDialog.Execute then
    begin
      memoConferir.Lines.LoadFromFile(OpenDialog.Filename);
    end;
end;

procedure TfrmNumeros.btnConferirClick(Sender: TObject);
var ListMemo, ListEdit, ListCompara: TStringList;
    i, j, iCount, iJogo, iQtdeInicio: Integer;
    sValoresIguais, sJogo: string;
begin
  try
    try
      case rdgJogosConferir.ItemIndex of
        0: begin
              iQtdeInicio := 5;
              if (Length(edtConferir.Text) > 17) or (Length(edtConferir.Text) < 11) then
                begin
                  Application.MessageBox('Corrija os valores a serem conferidos!',
                                         'Aten��o!', MB_OK + MB_ICONQUESTION);
                  Exit;
                end;

              ListEdit := TStringList.Create;
              ListEdit := ArrayString2(edtConferir.Text, ',');
              for j := 0 to iQtdeInicio do
                begin
                  if StrToInt(ListEdit.Strings[j]) > 60 then
                    begin
                      Application.MessageBox(PChar('Valor digitado ultrapassa valor da cartela - ' + ListEdit.Strings[j]),
                                            'Aten��o!', MB_OK + MB_ICONQUESTION);
                      Exit;
                    end;
                end;

              ListEdit.Clear;
              memoResultado.Clear;

              iJogo := 0;
              ListMemo := TStringList.Create;
              ListCompara := TStringList.Create;
              ListEdit := ArrayString2(edtConferir.Text, ',');
              if Trim(memoConferir.Lines.Text) <> '' then
                begin
                  ListMemo := ArrayString2(memoConferir.Lines.Text, '-');
                  while ListMemo.Count > 0 do
                    begin
                      iCount := 0;
                      for j := 0 to iQtdeInicio do
                        begin
                          ListCompara.Add(ListMemo.Strings[0]);
                          ListMemo.Delete(0);
                        end;

                      for i := 0 to iQtdeInicio do
                        begin
                          if (ListEdit.IndexOf(ListCompara.Strings[i]) > -1) then
                            begin
                              if iCount = 0 then
                                begin
                                  if Length(ListCompara.Strings[i]) < 2 then
                                    sValoresIguais := sValoresIguais + '0' + ListCompara.Strings[i]
                                  else
                                    sValoresIguais := sValoresIguais + ListCompara.Strings[i];
                                end
                              else
                                begin
                                  if Length(ListCompara.Strings[i]) < 2 then
                                    sValoresIguais := sValoresIguais + ' - 0' + ListCompara.Strings[i]
                                  else
                                    sValoresIguais := sValoresIguais + ' - ' + ListCompara.Strings[i];
                                end;
                              Inc(iCount);
                            end;
                          if i = 0 then
                            begin
                              if Length(ListCompara.Strings[i]) < 2 then
                                sJogo := sJogo + '0' + ListCompara.Strings[i]
                              else
                                sJogo := sJogo + ListCompara.Strings[i];
                            end
                          else
                            begin
                              if Length(ListCompara.Strings[i]) < 2 then
                                sJogo := sJogo + ' - 0' + ListCompara.Strings[i]
                              else
                                sJogo := sJogo + ' - ' + ListCompara.Strings[i];
                            end;
                        end;
                      if Trim(sValoresIguais) <> '' then
                        begin
                          Inc(iJogo);
                          case iCount of
                            1: begin
                                 case rdgEscolha.ItemIndex of
                                   0: memoResultado.Lines.Add('Voc� acertou 1 ponto!!!!');
                                 end;
                               end;
                            2: begin
                                 case rdgEscolha.ItemIndex of
                                   0: memoResultado.Lines.Add('Voc� acertou 2 pontos!!!!');
                                 end;
                               end;
                            3: begin
                                 case rdgEscolha.ItemIndex of
                                   0: memoResultado.Lines.Add('Voc� acertou 3 pontos!!!!');
                                 end;
                               end;
                            4: begin
                                 memoResultado.Lines.Add('Voc� acertou na quadra!!!!');
                                 memoResultado.Lines.Add('Resultado do ' + IntToStr(iJogo) + '� jogo: ' + sJogo);
                                 memoResultado.Lines.Add(sValoresIguais + Chr(13));
                               end;
                            5: begin
                                 memoResultado.Lines.Add('Muito bom voc� acertou na quina!!!!');
                                 memoResultado.Lines.Add('Resultado do ' + IntToStr(iJogo) + '� jogo: ' + sJogo);
                                 memoResultado.Lines.Add(sValoresIguais + Chr(13));
                               end;
                            6: begin
                                 memoResultado.Lines.Add('Parab�ns voc� acertou na sena!!!!');
                                 memoResultado.Lines.Add('Resultado do ' + IntToStr(iJogo) + '� jogo: ' + sJogo);
                                 memoResultado.Lines.Add(sValoresIguais + Chr(13));
                               end;
                          end;
                          if (rdgEscolha.ItemIndex = 0) and not (iCount in [4,5,6]) then
                            begin
                                 memoResultado.Lines.Add('Resultado do ' + IntToStr(iJogo) + '� jogo: ' + sJogo);
                                 memoResultado.Lines.Add(sValoresIguais + Chr(13));
                            end;
                        end
                      else
                        begin
                          Inc(iJogo);
                          case rdgEscolha.ItemIndex of
                            0: begin
                                 memoResultado.Lines.Add('Resultado do ' + IntToStr(iJogo) + '� jogo: ' + sJogo);
                                 memoResultado.Lines.Add('Nenhuma dezena igual.' + Chr(13));
                               end;
                          end;
                        end;
                      sJogo := '';
                      sValoresIguais := '';
                      ListCompara.Clear;
                    end;
                end
              else
                begin
                  Exit;
                end;
           end;
        1: begin
              iQtdeInicio := 14;
              if (Length(edtConferir.Text) > 45) or (Length(edtConferir.Text) < 36) then
                begin
                  Application.MessageBox('Corrija os valores a serem conferidos!',
                                         'Aten��o!', MB_OK + MB_ICONQUESTION);
                  Exit;
                end;

              ListEdit := TStringList.Create;
              ListEdit := ArrayString2(edtConferir.Text, ',');
              for j := 0 to iQtdeInicio do
                begin
                  if StrToInt(ListEdit.Strings[j]) > 25 then
                    begin
                      Application.MessageBox(PChar('Valor digitado ultrapassa valor da cartela - ' + ListEdit.Strings[j]),
                                            'Aten��o!', MB_OK + MB_ICONQUESTION);
                      Exit;
                    end;
                end;

              ListEdit.Clear;
              memoResultado.Clear;

              iJogo := 0;
              ListMemo := TStringList.Create;
              ListCompara := TStringList.Create;
              ListEdit := ArrayString2(edtConferir.Text, ',');
              if Trim(memoConferir.Lines.Text) <> '' then
                begin
                  ListMemo := ArrayString2(memoConferir.Lines.Text, '-');
                  while ListMemo.Count > 0 do
                    begin
                      iCount := 0;
                      for j := 0 to iQtdeInicio do
                        begin
                          ListCompara.Add(ListMemo.Strings[0]);
                          ListMemo.Delete(0);
                        end;

                      for i := 0 to iQtdeInicio do
                        begin
                          if (ListEdit.IndexOf(ListCompara.Strings[i]) > -1) then
                            begin
                              if iCount = 0 then
                                begin
                                  if Length(ListCompara.Strings[i]) < 2 then
                                    sValoresIguais := sValoresIguais + '0' + ListCompara.Strings[i]
                                  else
                                    sValoresIguais := sValoresIguais + ListCompara.Strings[i];
                                end
                              else
                                begin
                                  if Length(ListCompara.Strings[i]) < 2 then
                                    sValoresIguais := sValoresIguais + ' - 0' + ListCompara.Strings[i]
                                  else
                                    sValoresIguais := sValoresIguais + ' - ' + ListCompara.Strings[i];
                                end;
                              Inc(iCount);
                            end;
                          if i = 0 then
                            begin
                              if Length(ListCompara.Strings[i]) < 2 then
                                sJogo := sJogo + '0' + ListCompara.Strings[i]
                              else
                                sJogo := sJogo + ListCompara.Strings[i];
                            end
                          else
                            begin
                              if Length(ListCompara.Strings[i]) < 2 then
                                sJogo := sJogo + ' - 0' + ListCompara.Strings[i]
                              else
                                sJogo := sJogo + ' - ' + ListCompara.Strings[i];
                            end;
                        end;
                      if Trim(sValoresIguais) <> '' then
                        begin
                          Inc(iJogo);
                          case rdgEscolha.ItemIndex of
                            0: begin
                                  for i := 1 to 15 do
                                    begin
                                      if iCount = i then
                                        begin
                                          memoResultado.Lines.Add('Voc� acertou ' + IntToStr(i) + ' pontos!!!!');
                                          memoResultado.Lines.Add('Resultado do ' + IntToStr(iJogo) + '� jogo: ' + sJogo);
                                          memoResultado.Lines.Add(sValoresIguais + Chr(13));
                                        end;
                                    end;
                               end;
                            1: begin
                                  for i := 11 to 15 do
                                    begin
                                      if iCount = i then
                                        begin
                                          memoResultado.Lines.Add('Voc� acertou ' + IntToStr(i) + ' pontos!!!!');
                                          memoResultado.Lines.Add('Resultado do ' + IntToStr(iJogo) + '� jogo: ' + sJogo);
                                          memoResultado.Lines.Add(sValoresIguais + Chr(13));
                                        end;
                                    end;
                               end;
                          end;
                        end
                      else
                        begin
                          Inc(iJogo);
                          case rdgEscolha.ItemIndex of
                            0: begin
                                 memoResultado.Lines.Add('Resultado do ' + IntToStr(iJogo) + '� jogo: ' + sJogo);
                                 memoResultado.Lines.Add('Nenhuma dezena igual.' + Chr(13));
                               end;
                          end;
                        end;
                      sJogo := '';
                      sValoresIguais := '';
                      ListCompara.Clear;
                    end;
                end
              else
                begin
                  Exit;
                end;
           end;
        2: begin
              iQtdeInicio := 49;
              if (Length(edtConferir.Text) > 60) or (Length(edtConferir.Text) < 51) then
                begin
                  Application.MessageBox('Corrija os valores a serem conferidos!',
                                         'Aten��o!', MB_OK + MB_ICONQUESTION);
                  Exit;
                end;

              ListEdit := TStringList.Create;
              ListEdit := ArrayString2(edtConferir.Text, ',');
              for j := 0 to 19 do
                begin
                  if StrToInt(ListEdit.Strings[j]) > 100 then
                    begin
                      Application.MessageBox(PChar('Valor digitado ultrapassa valor da cartela - ' + ListEdit.Strings[j]),
                                            'Aten��o!', MB_OK + MB_ICONQUESTION);
                      Exit;
                    end;
                end;

              ListEdit.Clear;
              memoResultado.Clear;

              iJogo := 0;
              ListMemo := TStringList.Create;
              ListCompara := TStringList.Create;
              ListEdit := ArrayString2(edtConferir.Text, ',');
              if Trim(memoConferir.Lines.Text) <> '' then
                begin
                  ListMemo := ArrayString2(memoConferir.Lines.Text, '-');
                  while ListMemo.Count > 0 do
                    begin
                      iCount := 0;
                      for j := 0 to iQtdeInicio do
                        begin
                          ListCompara.Add(ListMemo.Strings[0]);
                          ListMemo.Delete(0);
                        end;

                      for i := 0 to iQtdeInicio do
                        begin
                          if (ListEdit.IndexOf(ListCompara.Strings[i]) > -1) then
                            begin
                              if iCount = 0 then
                                begin
                                  if Length(ListCompara.Strings[i]) < 2 then
                                    sValoresIguais := sValoresIguais + '0' + ListCompara.Strings[i]
                                  else
                                    sValoresIguais := sValoresIguais + ListCompara.Strings[i];
                                end
                              else
                                begin
                                  if Length(ListCompara.Strings[i]) < 2 then
                                    sValoresIguais := sValoresIguais + ' - 0' + ListCompara.Strings[i]
                                  else
                                    sValoresIguais := sValoresIguais + ' - ' + ListCompara.Strings[i];
                                end;
                              Inc(iCount);
                            end;
                          if i = 0 then
                            begin
                              if Length(ListCompara.Strings[i]) < 2 then
                                sJogo := sJogo + '0' + ListCompara.Strings[i]
                              else
                                sJogo := sJogo + ListCompara.Strings[i];
                            end
                          else
                            begin
                              if Length(ListCompara.Strings[i]) < 2 then
                                sJogo := sJogo + ' - 0' + ListCompara.Strings[i]
                              else
                                sJogo := sJogo + ' - ' + ListCompara.Strings[i];
                            end;
                        end;
                      if Trim(sValoresIguais) <> '' then
                        begin
                          Inc(iJogo);
                          case rdgEscolha.ItemIndex of
                            0: begin
                                  for i := 1 to 20 do
                                    begin
                                      if iCount = i then
                                        begin
                                          memoResultado.Lines.Add('Voc� acertou ' + IntToStr(i) + ' pontos!!!!');
                                          memoResultado.Lines.Add('Resultado do ' + IntToStr(iJogo) + '� jogo: ' + sJogo);
                                          memoResultado.Lines.Add(sValoresIguais + Chr(13));
                                        end;
                                    end;
                               end;
                            1: begin
                                  for i := 16 to 20 do
                                    begin
                                      if iCount = i then
                                        begin
                                          memoResultado.Lines.Add('Voc� acertou ' + IntToStr(i) + ' pontos!!!!');
                                          memoResultado.Lines.Add('Resultado do ' + IntToStr(iJogo) + '� jogo: ' + sJogo);
                                          memoResultado.Lines.Add(sValoresIguais + Chr(13));
                                        end;
                                    end;
                               end;
                          end;
                        end
                      else
                        begin
                          Inc(iJogo);
                          case rdgEscolha.ItemIndex of
                            0: begin
                                 memoResultado.Lines.Add('Resultado do ' + IntToStr(iJogo) + '� jogo: ' + sJogo);
                                 memoResultado.Lines.Add('Nenhuma dezena igual.' + Chr(13));
                               end;
                          end;
                        end;
                      sJogo := '';
                      sValoresIguais := '';
                      ListCompara.Clear;
                    end;
                end
              else
                begin
                  Exit;
                end;
           end;
        3: begin
              iQtdeInicio := 4;
              if (Length(edtConferir.Text) > 14) or (Length(edtConferir.Text) < 9) then
                begin
                  Application.MessageBox('Corrija os valores a serem conferidos!',
                                         'Aten��o!', MB_OK + MB_ICONQUESTION);
                  Exit;
                end;

              ListEdit := TStringList.Create;
              ListEdit := ArrayString2(edtConferir.Text, ',');
              for j := 0 to iQtdeInicio do
                begin
                  if StrToInt(ListEdit.Strings[j]) > 80 then
                    begin
                      Application.MessageBox(PChar('Valor digitado ultrapassa valor da cartela - ' + ListEdit.Strings[j]),
                                            'Aten��o!', MB_OK + MB_ICONQUESTION);
                      Exit;
                    end;
                end;

              ListEdit.Clear;
              memoResultado.Clear;

              iJogo := 0;
              ListMemo := TStringList.Create;
              ListCompara := TStringList.Create;
              ListEdit := ArrayString2(edtConferir.Text, ',');
              if Trim(memoConferir.Lines.Text) <> '' then
                begin
                  ListMemo := ArrayString2(memoConferir.Lines.Text, '-');
                  while ListMemo.Count > 0 do
                    begin
                      iCount := 0;
                      for j := 0 to iQtdeInicio do
                        begin
                          ListCompara.Add(ListMemo.Strings[0]);
                          ListMemo.Delete(0);
                        end;

                      for i := 0 to iQtdeInicio do
                        begin
                          if (ListEdit.IndexOf(ListCompara.Strings[i]) > -1) then
                            begin
                              if iCount = 0 then
                                begin
                                  if Length(ListCompara.Strings[i]) < 2 then
                                    sValoresIguais := sValoresIguais + '0' + ListCompara.Strings[i]
                                  else
                                    sValoresIguais := sValoresIguais + ListCompara.Strings[i];
                                end
                              else
                                begin
                                  if Length(ListCompara.Strings[i]) < 2 then
                                    sValoresIguais := sValoresIguais + ' - 0' + ListCompara.Strings[i]
                                  else
                                    sValoresIguais := sValoresIguais + ' - ' + ListCompara.Strings[i];
                                end;
                              Inc(iCount);
                            end;
                          if i = 0 then
                            begin
                              if Length(ListCompara.Strings[i]) < 2 then
                                sJogo := sJogo + '0' + ListCompara.Strings[i]
                              else
                                sJogo := sJogo + ListCompara.Strings[i];
                            end
                          else
                            begin
                              if Length(ListCompara.Strings[i]) < 2 then
                                sJogo := sJogo + ' - 0' + ListCompara.Strings[i]
                              else
                                sJogo := sJogo + ' - ' + ListCompara.Strings[i];
                            end;
                        end;
                      if Trim(sValoresIguais) <> '' then
                        begin
                          Inc(iJogo);
                          case rdgEscolha.ItemIndex of
                            0: begin
                                  for i := 1 to 5 do
                                    begin
                                      if iCount = i then
                                        begin
                                          memoResultado.Lines.Add('Voc� acertou ' + IntToStr(i) + ' pontos!!!!');
                                          memoResultado.Lines.Add('Resultado do ' + IntToStr(iJogo) + '� jogo: ' + sJogo);
                                          memoResultado.Lines.Add(sValoresIguais + Chr(13));
                                        end;
                                    end;
                               end;
                            1: begin
                                  for i := 3 to 5 do
                                    begin
                                      if iCount = i then
                                        begin
                                          memoResultado.Lines.Add('Voc� acertou ' + IntToStr(i) + ' pontos!!!!');
                                          memoResultado.Lines.Add('Resultado do ' + IntToStr(iJogo) + '� jogo: ' + sJogo);
                                          memoResultado.Lines.Add(sValoresIguais + Chr(13));
                                        end;
                                    end;
                               end;
                          end;
                        end
                      else
                        begin
                          Inc(iJogo);
                          case rdgEscolha.ItemIndex of
                            0: begin
                                 memoResultado.Lines.Add('Resultado do ' + IntToStr(iJogo) + '� jogo: ' + sJogo);
                                 memoResultado.Lines.Add('Nenhuma dezena igual.' + Chr(13));
                               end;
                          end;
                        end;
                      sJogo := '';
                      sValoresIguais := '';
                      ListCompara.Clear;
                    end;
                end
              else
                begin
                  Exit;
                end;
           end;
      end;
    except
      Application.MessageBox(PChar('Existe algum erro com o arquivo ou com os valores digitado para confer�ncia!' + Chr(13) +
                                   'Verificar tamb�m se o arquivo aberto � o arquivo criado pelo sistema!'),
                             'Aten��o!', MB_OK + MB_ICONQUESTION);
    end;
  finally
     FreeAndNil(ListMemo);
     FreeAndNil(ListEdit);
     FreeAndNil(ListCompara);
  end;
end;

procedure TfrmNumeros.btnSalvarSairamClick(Sender: TObject);
begin
  case pgcJogos.ActivePageIndex of
     0: begin
          edtMaisSairam.ReadOnly := True;
          edtTotalSair.ReadOnly := True;
          btnAlterar.Enabled := True;
          btnSalvarSairam.Enabled := False;
        end;
     1: begin
          edtMaisSairamLt.ReadOnly := True;
          edtTotalSairLt.ReadOnly := True;
          btnAlterarLt.Enabled := True;
          btnSalvarSairamLt.Enabled := False;
        end;
     2: begin
          edtMaisSairamLm.ReadOnly := True;
          edtTotalSairLm.ReadOnly := True;
          btnAlterarLm.Enabled := True;
          btnSalvarSairamLm.Enabled := False;
        end;
     3: begin
          edtMaisSairamQ.ReadOnly := True;
          edtTotalSairQ.ReadOnly := True;
          btnAlterarQ.Enabled := True;
          btnSalvarSairamQ.Enabled := False;
        end;
  end;
end;

procedure TfrmNumeros.btnMarcarClick(Sender: TObject);
var i: Integer;
begin
   case pgcJogos.ActivePageIndex of
     0: begin
          if btnMarcar.Caption = 'Marcar todos n�meros' then
             begin
               chkNumSair.Enabled := False;
               btnMarcar.Caption := 'Desmarcar todos n�meros';
               for i := 0 to chklst1.Items.Count - 1 do
                 begin
                   chklst1.Checked[i] := True;
                 end;
             end
          else
             begin
               chkNumSair.Enabled := True;
               btnMarcar.Caption := 'Marcar todos n�meros';
               for i := 0 to chklst1.Items.Count - 1 do
                 begin
                   chklst1.Checked[i] := False;
                 end;
             end;
        end;
     1: begin
          if btnMarcarLt.Caption = 'Marcar todos n�meros' then
             begin
               chkNumSairLt.Enabled := False;
               btnMarcarLt.Caption := 'Desmarcar todos n�meros';
               for i := 0 to chklst1Lt.Items.Count - 1 do
                 begin
                   chklst1Lt.Checked[i] := True;
                 end;
             end
          else
             begin
               chkNumSairLt.Enabled := True;
               btnMarcarLt.Caption := 'Marcar todos n�meros';
               for i := 0 to chklst1Lt.Items.Count - 1 do
                 begin
                   chklst1Lt.Checked[i] := False;
                 end;
             end;
        end;
     2: begin
          if btnMarcarLm.Caption = 'Marcar todos n�meros' then
             begin
               chkNumSairLm.Enabled := False;
               btnMarcarLm.Caption := 'Desmarcar todos n�meros';
               for i := 0 to chklst1Lm.Items.Count - 1 do
                 begin
                   chklst1Lm.Checked[i] := True;
                 end;
             end
          else
             begin
               chkNumSairLm.Enabled := True;
               btnMarcarLm.Caption := 'Marcar todos n�meros';
               for i := 0 to chklst1Lm.Items.Count - 1 do
                 begin
                   chklst1Lm.Checked[i] := False;
                 end;
             end;
        end;
     3: begin
          if btnMarcarQ.Caption = 'Marcar todos n�meros' then
             begin
               chkNumSairQ.Enabled := False;
               btnMarcarQ.Caption := 'Desmarcar todos n�meros';
               for i := 0 to chklst1Q.Items.Count - 1 do
                 begin
                   chklst1Q.Checked[i] := True;
                 end;
             end
          else
             begin
               chkNumSairQ.Enabled := True;
               btnMarcarQ.Caption := 'Marcar todos n�meros';
               for i := 0 to chklst1Q.Items.Count - 1 do
                 begin
                   chklst1Q.Checked[i] := False;
                 end;
             end;
        end;
   end;
end;

end.
