program final_2017;
const
	DIM1=4;
	DIM2=4;
type Tmat = array[1..DIM1,1..DIM2] of Longint;

procedure CargarMatriz(var M: Tmat);
	var i,j,f,k,c,fac: Longint;
begin
	
	for i := 1 to DIM1 do
	begin
		for j:=1 to DIM2 do
		begin
			f:=i+j;
			fac:=1;
			c:=1;
			for k:=1 to f do  
			begin
				fac:=fac*c;
				c:=c+1;
			end;
			M[i,j]:=fac;
		end;
	end;
end;

procedure MostrarMatriz(M:Tmat);
	var
		i,j: Integer;
begin
	for i := 1 to DIM1 do
	begin
		for j:=1 to DIM2 do
		begin
			write(M[i,j]:5);
		end;
		writeln;
	end;
end;

function Pertenece(M: Tmat; n: Integer):Integer;
	var
	i,j,c: Integer;
begin
	c:=0;
	for i := 1 to DIM1 do
	begin
		for j := 1 to DIM2 do
		begin
			if n=M[i,j] then
			begin
				c:=c+1;
			end;
		end;
	end;
	Pertenece:=c;
end;

var
	M: Tmat;
BEGIN 
	randomize;
	CargarMatriz(M);
	MostrarMatriz(M);
END.