program parcial2018_tema1;
uses crt;
const
	DIM = 5;
type Tmat = array[1..DIM,1..DIM] of Integer;

procedure CargarMatriz(var M:Tmat; limInf,limSup:Integer);
var
	i,j: Integer;
begin
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do
		begin
			M[i,j]:=limInf+random(limSup+1-limInf);
		end;
	end;
end;

procedure Mostrar(M:Tmat);
var
	i,j: Integer;
begin
	for i := 1 to DIM do
	begin
		writeln;
		for j := 1 to DIM do
		begin
			write(M[i,j]:5)
		end;
		writeln;
	end;
end;

function Mayor(x:Integer): Integer;
var
	may,dig1,dig2,dig3: Integer;
begin
	dig1:=x mod 10;
	dig2:=(x div 10) mod 10;
	dig3:=x div 100;

	if (dig1>=dig2) and (dig1>=dig3) then 
	begin
		may:=dig1;
	end
	else if (dig2>=dig1) and (dig2>=dig3) then
	begin
		may:=dig2;
	end
	else if (dig3>=dig1) and (dig3>=dig2) then
	begin
		may:=dig3;
	end;
	Mayor:=may;
end;

var
	M,M1: Tmat;
	i,j: Integer;
BEGIN
	randomize;
	CargarMatriz(M,100,999);
	Mostrar(M);
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do
		begin
			M1[i,j]:=Mayor(M[i,j]);
		end;
	end;
	writeln;writeln;
	writeln('La matriz de mayores: ');
	Mostrar(M1);
END.