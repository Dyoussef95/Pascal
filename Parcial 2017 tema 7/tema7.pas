program tema7;
uses crt;
const
	DIM1 = 5; 
	DIM2 = 5;
type Tmat = array[1..DIM1,1..DIM2] of Integer;
type Tvec = array[1..10] of Integer;
procedure CargarMatriz(var M:Tmat;LimInf,LimSup: Integer);
	var
		i,j: Integer;
begin
	for i := 1 to DIM1 do
	begin
		for j := 1 to DIM2 do
		begin	
			M[i,j]:=LimInf+random(LimSup+1-LimInf); {CARGO CON ALEATORIOS}
			write(M[i,j]:5);	
		end;
		writeln;
	end;
end;

procedure GenerarVector(var V: Tvec);
	var
		prim,seg,fibo,i: Integer;
begin
	prim:=0;
	seg:=1;
	for i := 1 to 10 do
	begin
		fibo:=prim+seg;
		prim:=seg;
		seg:=fibo;
		V[i]:=fibo;
		write(V[i]:5);
	end;
end;

function seEncuentra(M: tmat;V: tvec): Integer;
var
	i,j,k,c: Integer;
begin
	c:=0;
	for k := 1 to 10 do
	begin
		for i := 1 to DIM1 do
		begin
			for j := 1 to DIM2 do
			begin
				if M[i,j]=V[k] then
				begin
					c:=c+1;
					writeln(M[i,j]);
				end;
			end;
		end;
	end;
	seEncuentra:=c;
end;

var
	M: Tmat;
	V: Tvec;
	x: Integer;
BEGIN{MAIN}
	randomize;
	CargarMatriz(M,1,55);
	writeln;writeln;
	GenerarVector(V);
	writeln;
	x:=seEncuentra(M,V);
	if x=0 then 
	begin
		writeln('No hay elementos del vector en la matriz');
	end
	else 
	begin
		writeln('Elementos del vector en la matriz: ',x);
	end;
END.

