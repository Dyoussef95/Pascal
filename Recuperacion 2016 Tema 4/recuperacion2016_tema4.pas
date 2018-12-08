program recuperacion2016_tema4;
uses crt;
const
DIM1 = 5;
DIM2 = 4;
type Tmat = array[1..DIM1,1..DIM2] of Integer;
type Tvec = array[1..DIM1*DIM2] of Integer;

procedure CargarMatriz(var M:Tmat);
	var
		i,j: Integer;
begin
	for i := 1 to DIM1 do
	begin
		writeln;
		for j := 1 to DIM2 do
		begin
			M[i,j]:=10+random(99+1-10);
			write(M[i,j]:5);
		end;
		writeln;
	end;
end;

procedure CargarVecImpar(var V:Tvec);
	var
		i: Integer;		
begin
	for i := 1 to DIM1*DIM2 do
	begin
		repeat
			V[i]:=10+random(99+1-10);
		until (V[i] mod 2 = 1) AND (V[i] mod 3 = 0);
	end;
end;

function EstaenVector(V:Tvec;M:Tmat): Integer;
var
	i,j,k,c: Integer;
begin
	c:=0;
	for i := 1 to DIM1 do
	begin
		for j := 1 to DIM2 do
		begin
			for k := 1 to DIM1*DIM2 do 
			begin
				if M[i,j] = V[k] then
				begin
					c:=c+1;
					writeln('V[',k,'] = ',V[k]);
				end;
			end;
		end;
	end;	
	EstaenVector:=c;
end;

{MAIN}
var
	M:Tmat;
	V:Tvec;
	x,i:Integer;
BEGIN 
	CargarMatriz(M);
	CargarVecImpar(V);
	writeln;writeln;
	for i := 1 to DIM1*DIM2 do
	begin
		write(V[i]:5);
	end;
	writeln;
	x:=EstaenVector(V,M);
	writeln('La cantidad es: ',x);
END.