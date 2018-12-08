program Tema3_2016;
uses crt;
type Tvec = array[1..10] of Integer;

function PerteneceaLaSerie(n: Integer): Boolean;
var
	prim,seg,tact: Integer;
begin
	prim:=0;
	seg:=1;
	repeat
		tact:=prim+2*seg;
		prim:=seg;
		seg:=tact;
	until n<=tact;

	if (n=tact) or (n=0) or (n=1) then 
	begin
		PerteneceaLaSerie:=True;
	end
	else 
	begin
		PerteneceaLaSerie:=False;
	end;
end;

procedure CargarVector(var V: Tvec);
	var
		i: Integer;
begin
	for i := 1 to 10 do
	begin
		repeat
			V[i]:=random(2501);
		until PerteneceaLaSerie(V[i])=True;
	end;
end;

var
	i: Integer;
	V: Tvec;
BEGIN {MAIN}
	randomize;
	CargarVector(V);
	for i := 1 to 10 do
	begin
		write(V[i]:5);
	end;
END.