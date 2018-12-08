program Tema8;
uses crt;
const
	DIM = 10;
type Tvec = array[1..DIM] of Integer;

procedure CargarVector(var Vect: Tvec;LimSup,LimInf: Integer);
var
	i: Integer;
begin
	for i:=1 to DIM do
	begin
		Vect[i]:=LimInf + random(LimSup - LimInf + 1);
	end;
end;

procedure MostrarVector(V: Tvec);
var
	i: Integer;
begin
	for i:=1 to DIM do
	begin
		write(V[i]:4);
	end;
end;

function MaxEnVector(Vect: Tvec): Integer;
var
	i: Integer;
	max: Integer;
begin
	max:=0;
	for i:=1 to DIM do
	begin
		if Vect[i]>max then
		begin
			max:=Vect[i];
		end;
	end;

	MaxEnVector:=max;
end;

var
	Vect: Tvec;
	VectMax: array[1..5] of Integer;
	i: Integer;
BEGIN
	 for i := 1 to 5 do
	 begin
	 	CargarVector(Vect,100,999);
	 	MostrarVector(Vect);
	 	writeln;
	 	writeln;
	 	VectMax[i]:=MaxEnVector(Vect);
	 end;

	 for i := 1 to 5 do
	 begin
	 	write(VectMax[i]:4);
	 end;	 
END.