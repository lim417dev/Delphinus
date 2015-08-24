{
#########################################################
# Copyright by Alexander Benikowski                     #
# This unit is part of the Delphinus project hosted on  #
# https://github.com/Memnarch/Delphinus                 #
#########################################################
}
unit DN.Package.Version;

interface

uses
  DN.Types,
  DN.Package.Version.Intf;

type
  TDNPackageVersion = class(TInterfacedObject, IDNPackageVersion)
  private
    FVersion: string;
    FCompilerMin: TCompilerVersion;
    FCompilerMax: TCompilerVersion;
    function GetCompilerMax: TCompilerVersion;
    function GetCompilerMin: TCompilerVersion;
    function GetName: string;
    procedure SetCompilerMax(const Value: TCompilerVersion);
    procedure SetCompilerMin(const Value: TCompilerVersion);
    procedure SetName(const Value: string);
  public
    property Name: string read GetName write SetName;
    property CompilerMin: TCompilerVersion read GetCompilerMin write SetCompilerMin;
    property CompilerMax: TCompilerVersion read GetCompilerMax write SetCompilerMax;
  end;

implementation

{ TDNPackageVersion }

function TDNPackageVersion.GetCompilerMax: TCompilerVersion;
begin
  Result := FCompilerMax;
end;

function TDNPackageVersion.GetCompilerMin: TCompilerVersion;
begin
  Result := FCompilerMin;
end;

function TDNPackageVersion.GetName: string;
begin
  Result := FVersion;
end;

procedure TDNPackageVersion.SetCompilerMax(const Value: TCompilerVersion);
begin
  FCompilerMax := Value;
end;

procedure TDNPackageVersion.SetCompilerMin(const Value: TCompilerVersion);
begin
  FCompilerMin := Value;
end;

procedure TDNPackageVersion.SetName(const Value: string);
begin
  FVersion := Value;
end;

end.
