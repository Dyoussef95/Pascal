program Tema6;
uses crt;
const
	DIM1 = 5;
	DIM2 = 3;
type Tmat = array[1..DIM1,1..DIM2] of Real;

function Conversion(x: Real; t: Char): Real;
begin
	if t = 's' then 
	begin
		Conversion:=x*1000/3600;
	end
	else 
	begin
		Conversion:=x*1000/60;
	end;
end;

procedure MostrarMatriz(M: Tmat);
var
	i,j: Integer;
begin
	writeln('Km/h':10,'m/s':10,'m/min':10);
	for i:=1 to DIM1 do
	begin
		for j:=1 to DIM2 do
		begin
			write(M[i,j]:10:2);
		end;
		writeln;
	end;
end;

procedure CargarMatriz(var M: Tmat);
var
	i: Integer;
begin
	for i:=1 to DIM1 do
	begin
		write('Ingrese un valor (Km/h): ');
		read(M[i,1]);
		M[i,2]:=Conversion(M[i,1],'s');
		M[I,3]:=Conversion(M[i,1],'m');
	end;
end;

var
	M: Tmat;
BEGIN
	CargarMatriz(M);
	writeln;
	writeln;
	MostrarMatriz(M);
END.