program Tema5;
uses crt;
const
	DIM1 = 13;
	DIM2 = 3;
type Tmat = array[1..DIM1,1..DIM2] of Double;

function GradosF(x: Double): Double;
begin
	GradosF:=32+x*9/5;
end;

function GradosR(x: Double): Double;
begin
	GradosR:=32+x*9/5;
end;

procedure CargarMatriz(var M: Tmat);
var
	i,n: Integer;
begin
	n:=-10;
	for i:=1 to DIM1 do
	begin
		M[i,1]:=n;
		M[i,2]:=GradosF(M[i,1]);
		M[I,3]:=GradosR(M[i,1]);
		n:=n+10;
	end;
end;

var
	M: Tmat;
	i,j: Integer;
BEGIN
	CargarMatriz(M);
	writeln('Celcius':15,'Farenheit':13,'Rankine':11);
	for i:=1 to DIM1 do
	begin
		for j:=1 to DIM2 do
		begin
			write(M[i,j]:12:0);
		end;
		writeln;
	end;
END.