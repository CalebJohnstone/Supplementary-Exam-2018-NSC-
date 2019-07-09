// 8172327250012

unit Star_U;
interface

type
  TStar = class(TObject)
  private
    // Provided code
    fName: String;
    fMagnitude: real;
    fDistance: integer;
    fConstellation: String;
    fNavigationalStatus: Boolean;

  public
    // Provided code
    constructor Creates(pName, pConstellation : string; pMagnitude : Real; pDistance : Integer);
    function getName: String;
    function getMagnitude:Real;
    function getDistance:integer;
    function getConstellation:string;
    procedure SetNavigationalStatus(pStatus : Boolean);
    function DetermineVisibilty : string;
    function ToString : string;
  end;

implementation

Uses Math, SysUtils;
{$R+}

// ============================================================================
// Question 2.1.1
// ============================================================================


// ========================================================================
// Question 2.1.2
// ========================================================================


// ========================================================================
// Question 2.1.3
// ========================================================================


// ========================================================================
// Question 2.1.4
// ========================================================================


// ========================================================================
// Question 2.1.5
// ========================================================================


// ========================================================================
// Provided code
// ========================================================================
constructor TStar.Creates(pName, pConstellation: string; pMagnitude: Real;
  pDistance: Integer);
begin
  fName := pName;
  fConstellation := pConstellation;
  fMagnitude := pMagnitude;
  fDistance := pDistance;
  fNavigationalStatus := False;
end;

function TStar.DetermineVisibilty: string;
begin
  case fDistance of
    0..80 : Result := 'Clearly visible';
    81..900 :
    begin
      if fMagnitude <= 2 then
        Result := 'Hardly visible to the naked eye'
      else
        Result := 'Visible by means of standard optical aid';
    end
    else
      Result := 'Only visible by means of specialised optical aid';
  end;
end;

function TStar.getConstellation: string;
begin
  Result := fConstellation;
end;

function TStar.getDistance: integer;
begin
  Result := fDistance;
end;

function TStar.getMagnitude: Real;
begin
  Result := fMagnitude;
end;

function TStar.getName: String;
begin
  result := fName;
end;

procedure TStar.SetNavigationalStatus(pStatus: Boolean);
begin
  fNavigationalStatus := pStatus;
end;

function TStar.ToString: string;
begin
  Result := fName+' belongs to the '+fConstellation+' constellation'+#13#13;
  Result := Result+'The star has a magnitude of '+FloatToStrF(fMagnitude,ffFixed,10,2);
  Result := Result+' and is '+IntToStr(fDistance)+' light years away from Earth.'+#13#13;
  Result := Result+fName+' is a ';
  if fNavigationalStatus then
    Result := Result+'navigational '
  else
    Result := Result+'passive ';
  Result := Result+'star';
end;

end.

