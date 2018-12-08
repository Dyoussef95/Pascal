program tema4;
uses crt;
const
	DIM = 6;
type Tmat = array[1..DIM,1..DIM] of Integer;
procedure CargarMatriz(var M:Tmat;Linf,Lsup: Integer);
	var
		i,j: Integer;
begin
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do
		begin
			repeat
				M[i,j]:=Linf+random(Lsup+1-Linf); {CARGO CON ALEATORIOS}
			until M[i,j] mod 2 <> 0;
		end;
	end;
end;

procedure MostrarMatriz(M: Tmat);
	var
		i,j: Integer;
begin
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do
		begin
			write(M[i,j]:5);
		end;
		writeln;
	end;
end;

function SumarDiagonales(M: Tmat): Integer;
var
	i,a: Integer;
begin
	a:=0; 							{ACUMULADOR}
	for i := 1 to DIM do
	begin
		if i<DIM then			{SI i ES MENOR AL TAMAÑO DE LA MATRIZ ENTONCES}
		begin
		a:=a+M[i,i]+M[i,i+1]+M[i+1,i];	{ACUMULO LAS 3 DIAGONALES}
		end
		else					{ SINO }
		begin
		a:=a+M[i,i];			{ACUMULO EL ULTIMO COMPONENTE DE LA DIAGONAL PRINCIPAL}
		end;
	end;
	SumarDiagonales:=a;
end;

var
	M: Tmat;
	x: Integer;
BEGIN{MAIN}
	randomize;
	CargarMatriz(M,1,9);
	MostrarMatriz(M);
	x:=SumarDiagonales(M);
	writeln('La suma es: ',x);
END.