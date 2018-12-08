program rec2016_tema1;
uses crt;
type Tmat = array[1..6,1..6] of Integer;

procedure CargarMatriz(var M:Tmat;LimInf,LimSup: Integer);
	var
		i,j:Integer;
begin
	for i:=1 to 6 do
	begin
		for j:=1 to 6 do
		begin
			M[i,j]:=LimInf+random(LimSup+1-LimInf);
		end;
	end;
end;

procedure MostrarMatriz(M: Tmat);
	var
		i,j: Integer;
begin
	for i:=1 to 6 do
	begin
		writeln;
		for j:=1 to 6 do
		begin
			write(M[i,j]:5);
		end;
		writeln;
	end;
end;

function Multiplos3(M: Tmat): Integer;
var
	i,j,a: Integer;
begin
	a:=0;
	for i:=1 to 6 do
	begin
		for j:=1 to 6 do
		begin
			if (M[i,j] mod 100) MOD 3 = 0 then
			begin
				a:=a+M[i,j];
			end;
		end;
	end;

	Multiplos3:=a;
end;

//--------------MAIN----------
var
	M: Tmat;
	LimInf,LimSup,x:Integer;

BEGIN
	Randomize;
	LimInf:=100;
	LimSup:=999;
	CargarMatriz(M,LimInf,LimSup);
	MostrarMatriz(M);
	x:=Multiplos3(M);
	writeln;
	write('La suma es: ',x);	
END.