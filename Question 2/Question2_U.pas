//8172327250012

unit Question2_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, jpeg, Star_U;

type
  TfrmQ2 = class(TForm)
    lblHeading: TLabel;
    cmbStar: TComboBox;
    btnQ2_2_1: TButton;
    redOutput: TRichEdit;
    bmbClose: TBitBtn;
    imgQ2: TImage;
    pnlButtons: TPanel;
    btnQ2_2_2: TButton;
    btnQ2_2_3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure cmbStarChange(Sender: TObject);

    procedure btnQ2_2_1Click(Sender: TObject);
    procedure btnQ2_2_2Click(Sender: TObject);
    procedure btnQ2_2_3Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;
 var
  frmQ2: TfrmQ2;
  // Provided code
  objStarX: TStar;

implementation
 var
  arrNavigationStars: array [1 .. 58] of String = (
    'Alpheratz','Ankaa','Schedar','Diphda','Achernar','Hamal','Acamar',
    'Menkar','Mirfak','Aldebaran','Rigel','Capella','Bellatrix','Elnath',
    'Alnilam','Betelgeuse','Canopus','Sirius','Adhara','Procyon','Pollux',
    'Avior','Suhail','Miaplacidus','Alphard','Regulus','Dubhe','Denebola',
    'Gienah','Acrux','Gacrux','Alioth','Spica','Alkaid','Hadar','Menkent',
    'Rigil Kentaurus','Arcturus','Zubenelgenubi','Kochab','Alphecca',
    'Antares','Atria','Sabik','Shaula','Rasalhague','Eltanin',
    'Kaus Australis','Vega','Nunki','Altair','Peacock','Deneb','Enif',
    'Al Na''ir','Fomalhaut','Markab','Polaris');
{$R *.dfm}
{$R+}

// =====================================================================
// Question 2.2.1
// =====================================================================
procedure TfrmQ2.btnQ2_2_1Click(Sender: TObject);
var
  sName, sLine, sConstellation : string;
  tFile : TextFile;
  bFound : Boolean;
  iDist, k : Integer;
  rMag : Real;
begin
  // Question 2.2.1
  sName := cmbStar.Items[cmbStar.ItemIndex];

  if FileExists('StarData.txt') = false then
  begin
    ShowMessage('The file does not exist');
    Exit;
  end;

  AssignFile(tFile, 'StarData.txt');
  Reset(tFile);
  bFound := false;

  while not Eof(tFile) and (not bFound) do
  begin
    {Acrux
    1.25
    321
    Crux

    }
    readln(tFile,sLine);
    //ShowMessage(sLine);
    if UpperCase(sLine) = UpperCase(sName) then
      bFound := True
    else
      for k := 1 to 4 do
        Readln(tFile, sLine);
  end;

  if bFound then
  begin
    Readln(tFile, rMag);
    Readln(tFile, iDist);
    Readln(tFile, sConstellation);
    ShowMessage('Hi');
    objStarX := TStar.Creates(sName, sConstellation, rMag, iDist);
    bFound := false;
    k := 0;

    while not(bFound) and (k < 58) do
    begin
      Inc(k);
      if arrNavigationStars[k] = sName then
        bFound := True;
    end;

    objStarX.SetNavigationalStatus(bFound);
    pnlButtons.Enabled := True;
  end//found in texftile
  else
  begin
    ShowMessage('The star called '+sName+' was not found');
    pnlButtons.Enabled := False;
  end;
  pnlButtons.Show;
  CloseFile(tFile);
end;

// =====================================================================
// Question 2.2.2
// =====================================================================
procedure TfrmQ2.btnQ2_2_2Click(Sender: TObject);
begin
  // Question 2.2.2
  redOutput.Lines.Clear;
  redOutput.Lines.Add(objStarX.ToString);
  imgQ2.Picture.LoadFromFile(objStarX.getConstellation+'.jpg');

end;

// =====================================================================
// Question 2.2.3
// =====================================================================
procedure TfrmQ2.btnQ2_2_3Click(Sender: TObject);
begin
  // Question 2.2.3
  redOutput.Lines.Clear;
  redOutput.Lines.Add('Star: '+objStarX.getName);
  redOutput.Lines.Add('Visibility: '+objStarX.DetermineVisibilty);
end;


//{$REGION 'Provided code'}
// =====================================================================
// Provided code - DO NOT CHANGE
// =====================================================================

procedure TfrmQ2.cmbStarChange(Sender: TObject);
begin
  redOutput.Clear;
  pnlButtons.Hide;
  imgQ2.Picture := nil;
end;

procedure TfrmQ2.FormCanResize(Sender: TObject;
  var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  Resize := false;
end;

procedure TfrmQ2.FormCreate(Sender: TObject);
begin
  CurrencyString := 'R';
  pnlButtons.Hide;
end;
//{$ENDREGION}

end.

