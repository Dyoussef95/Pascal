program parcial2016_tema2;
uses crt;
type Tmat = array[1..5,1..7] of Integer;

procedure CargarMatriz(var M:Tmat;LimInf,LimSup:Integer);
	var
		i,j: Integer;
begin
	for i := 1 to 5 do
	begin
		for j := 1 to 7 do
		begin
			repeat
				M[i,j]:=LimInf+random(LimSup+1-LimInf);
			until (M[i,j] mod 10 = 3);
		end;
	end;
end;

procedure MostrarMatriz(M:Tmat);
	var
		i,j: Integer;
begin
	for i := 1 to 5 do
	begin
		for j := 1 to 7 do
		begin
			write(M[i,j]:5);
		end;
		writeln;
	end;
end;

function ElementosIguales(M1,M2:Tmat): Integer;
var i,j,c:Integer;
begin
	c:=0;
	for i := 1 to 5 do
	begin
		for j := 1 to 7 do
		begin
			if M1[i,j] <> M2[i,j] then
			begin
				c:=c+1;
			end;
		end;
	end;
	ElementosIguales:=c;
end;

var
	M1,M2: Tmat;
	LimInf,LimSup,x: Integer;
BEGIN {MAIN}
	textcolor(MAGENTA);
	randomize;
	LimInf:=10;
	LimSup:=99;
	CargarMatriz(M1,LimInf,LimSup);
	CargarMatriz(M2,LimInf,LimSup);
	MostrarMatriz(M1);
	writeln;writeln;
	MostrarMatriz(M2);
	x:=ElementosIguales(M1,M2);
	write('La cantidad de ElementosIguales es: ',x);
END.

