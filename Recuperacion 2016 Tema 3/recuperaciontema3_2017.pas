program recuperaciontema3_2017;
uses crt;		

type Tmat= array[1..5,1..7] of Integer;	

procedure CargarMatriz(var Matriz:Tmat;linf,lsup:Integer);
	var
		i,j: Integer;
begin
		for i := 1 to 5 do
		begin
			for j := 1 to 7 do
			begin
				Matriz[i,j]:=linf+random(lsup+1-linf);
			end;
		end;
end;
procedure MostrarMatriz(M:Tmat);
	var
		i,j: Integer;
begin
	for i := 1 to 5 do
		begin
		writeln;
			for j := 1 to 7 do
			begin
				write(M[i,j]:5);
			end;
		end;		
end;

function PerteneceALaSerie(n:Integer): integer;
var
	prim,seg,fibo: Integer;
begin
	prim:=0;	
	seg:=1;
	repeat
		fibo:=prim+seg;
		prim:=seg;
		seg:=fibo;
	until fibo>=n; 

	if n=fibo then
	begin
	writeln(n);
		PerteneceALaSerie:=1;
	end
	else 
	begin
		PerteneceALaSerie:=0;
	end;								
end;


var	
	M:Tmat;
	x,i,j,c:integer;
begin{MAIN}
	randomize;
	CargarMatriz(M,1,999);
	MostrarMatriz(M);
	writeln;
	c:=0;	
	for i := 1 to 5 do
	begin
		for j := 1 to 7 do
		begin
			x:=PerteneceALaSerie(M[i,j]);
			if x=1 then
			begin
				c:=c+1;
			end;
		end;
	end;
	writeln;
	write('la cantidad de numeros pertenecientes a la serie son ',c);
end.