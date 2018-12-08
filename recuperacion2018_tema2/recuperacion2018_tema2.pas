program recuperacion2018_tema2;
uses crt;
const
N = 7;
type Tmat = array[1..7,1..N] of Integer;


procedure CargaProd(var P:Tmat;LimInf,LimSup: Integer);
	var
		i,j: Integer;
begin
	for i := 1 to 7 do
	begin
		writeln;
		for j := 1 to N do
		begin
			P[i,j]:=LimInf+random(LimSup+1-LimInf);
			write(P[i,j]:5);
		end;
	end;
end;

function TotalProd(P: Tmat;fila: Integer): Integer;
	var
		j,a: Integer;
begin
	a:=0;
	for j := 1 to N do
	begin
		a:=a+P[fila,j];
	end;
	TotalProd:=a;
end;

function MaximaProd(P: Tmat;fila: Integer;var col: Integer):Integer;
	var
		j,max: Integer;
begin
	max:=P[fila,1];
	col:=1;
	for j := 1 to N do
	begin
		if P[fila,j]>max then
		begin
			max:=P[fila,j];
			col:=j;
		end;
	end;
	MaximaProd:=max;
end;


var
	P: Tmat;
	LimInf,LimSup,i,a,b,col: Integer;
BEGIN 
	randomize;
	LimInf:=5;
	LimSup:=20;
	CargaProd(P,LimInf,LimSup);
	writeln;writeln;
	for i := 1 to 7 do
	begin
		a:=TotalProd(P,i);
		writeln('Total dia ',i,': ',a,' litros');
		b:=MaximaProd(P,i,col);
		writeln('MAXIMA PRODUCCION: ',b,' litros. VACA NRO: ',col);
	end;
END.