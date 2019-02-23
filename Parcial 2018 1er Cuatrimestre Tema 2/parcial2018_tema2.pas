program parcial2018_tema2;
uses crt;
const
	DIM = 3;
type Tmat = array[1..DIM,1..DIM] of Integer;
type Tvec = array[1..DIM] of Integer;

procedure CargarMat(var M:Tmat; limInf,limSup:Integer);
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

procedure Muestra(M:Tmat);
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

function Mayor_Fila(M:Tmat;fila:Integer): Integer;
var
	j,mayor: Integer;
begin
	mayor:=0;
	for j := 1 to DIM do
	begin
		if M[fila,j]>mayor then
		begin
			mayor:=M[fila,j];
		end;
	end;
	Mayor_Fila:=mayor;
end;

var
	M: Tmat;
	Vec: Tvec;
	i: Integer;
BEGIN
	randomize;
	CargarMat(M,1000,9999);
	Muestra(M);
	for i := 1 to DIM do
	begin
		Vec[i]:=Mayor_Fila(M,i);
	end;
	writeln;writeln;
	writeln('Los mayores de cada fila: ');
	for i := 1 to DIM do
	begin
		writeln(i,Vec[i]:10);
	end;
END.