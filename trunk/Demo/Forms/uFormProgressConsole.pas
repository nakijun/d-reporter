unit uFormProgressConsole;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  StdCtrls,  ExtCtrls, 
  StdInterface, ComCtrls;

type
  TFormProgressConsole = class(TForm, IProgConsole)
    btnBreak: TButton;
    lblHint: TLabel;
    ProgressBar1: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure btnBreakClick(Sender: TObject);
  private
    { Private declarations }
    FIsBreak: Boolean;
  protected

  protected
    //interface implement
    procedure SetPosition(pvPosition: Integer);

    procedure SetMax(pvValue: Integer);

    //
    procedure ShowProgressConsole();

    //是否已经终止
    function IsBreaked: Boolean;

    //设置显示文字
    procedure SetHint(pvHint:String);

    //释放
    procedure CloseConsole;


    //递增进度
    procedure IncPosition();
    //隐藏
    procedure HideConsole();

    // 释放
    procedure FreeConsole();

    //设置显示文字
    procedure SetHintText(pvHint:PAnsiChar);

  public
    destructor Destroy; override;
    procedure CreateParams(var Params: TCreateParams); override;

    { Public declarations }
  end;

var
  FormProgressConsole: TFormProgressConsole;

implementation

{$R *.dfm}

procedure TFormProgressConsole.FormCreate(Sender: TObject);
begin
  lblHint.Visible := false;
end;

procedure TFormProgressConsole.FreeConsole;
begin
  Self.Free;  
end;

procedure TFormProgressConsole.HideConsole;
begin
  self.Close;
end;

destructor TFormProgressConsole.Destroy;
begin
  inherited Destroy;
end;

procedure TFormProgressConsole.SetMax(pvValue: Integer);
begin
  self.ProgressBar1.Max := pvValue;
end;

procedure TFormProgressConsole.SetPosition(pvPosition: Integer);
begin
  self.ProgressBar1.Position := pvPosition;
  application.ProcessMessages;
end;

procedure TFormProgressConsole.ShowProgressConsole;
begin
  self.Show();
  self.BringToFront();
  self.Refresh;
end;

procedure TFormProgressConsole.btnBreakClick(Sender: TObject);
begin
  FIsBreak := True;
end;

procedure TFormProgressConsole.CloseConsole;
begin
  Self.Free;
end;

procedure TFormProgressConsole.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.WndParent := GetActiveWindow;
end;


procedure TFormProgressConsole.IncPosition;
begin
  ProgressBar1.Position := ProgressBar1.Position + 1;
  application.ProcessMessages;
end;

function TFormProgressConsole.IsBreaked: Boolean;
begin
  Result := FIsBreak;
end;

procedure TFormProgressConsole.SetHint(pvHint:String);
begin
  lblHint.Caption := pvHint;
  lblHint.Visible := lblHint.Caption <> '';
  if lblHint.Visible then
    Sleep(100);

end;

procedure TFormProgressConsole.SetHintText(pvHint: PAnsiChar);
begin
  SetHint(pvHint);
end;

end.

