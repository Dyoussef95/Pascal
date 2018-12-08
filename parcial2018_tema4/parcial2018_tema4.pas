program parcial2018_tema4;
uses crt;
const
	DIM = 5;
type Tmat = array[1..DIM,1..DIM] of Char;
type Tvec = array[1..5] of Integer;

procedure CargaMat(var M:Tmat; limInf,limSup:Integer);
var
	i,j: Integer;
begin
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do
		begin
			M[i,j]:=Chr(limInf+random(limSup+1-limInf));
		end;
	end;
end;

procedure MuestraMat(M:Tmat);
var
	i,j: Integer;
begin
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do
		begin
			write(M[i,j]:5)
		end;
		writeln;
	end;
end;

function Vocales(M:Tmat;v:Char): Integer;
var
	i,j,c: Integer;
begin
	c:=0;
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do
		begin
			if M[i,j]=v then
			begin
				c:=c+1;
			end;
		end;
	end;
	Vocales:=c;
end;

var
	M: Tmat;
	Vec: Tvec;
	i: Integer;
BEGIN
	randomize;
	CargaMat(M,65,90);
	MuestraMat(M);
	writeln;writeln;
	Vec[1]:=Vocales(M,'A');
	Vec[2]:=Vocales(M,'E');
	Vec[3]:=Vocales(M,'I');
	Vec[4]:=Vocales(M,'O');
	Vec[5]:=Vocales(M,'U');
	writeln('A E I O U');
	for i := 1 to 5 do
	begin
		write(Vec[i]:5);
	end;
END.