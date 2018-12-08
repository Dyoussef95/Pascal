program tema1_2016;
uses crt;
const
	DIM = 6;
type Tmat = array[1..6,1..6] of Integer;

procedure CargarMatriz(var M: Tmat;LimInf,LimSup: Integer);
	var
		i,j: Integer;
begin
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do
		begin
			repeat
				M[i,j]:=limInf+random(limSup+1-limInf);
			until M[i,j] mod 3 = 0;
		end;
	end;
end;

procedure MostrarMatriz(M: Tmat);
	var
		i,j: Integer;
begin
	for i := 1 to dim do
	begin
		writeln;
		for j := 1 to dim do
		begin
			write(M[i,j]:8);
		end;
	end;
end;

function SumaPares(M: Tmat): Integer;
var
	i,j,a: Integer;
begin
	a:=0;
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do
		begin
			if M[i,j] mod 2 = 0 then
			begin
				a:=a+M[i,j];
			end;
		end;
	end;
	SumaPares:=a;
end;

var
	M: Tmat;
	x: Integer;
BEGIN
	randomize;
	CargarMatriz(M,3,100);
	MostrarMatriz(M);
	writeln;
	x:=SumaPares(M);
	write('La suma de los pares es: ',x);
END.
