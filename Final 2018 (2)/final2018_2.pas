program final2018_2;
uses crt;
const 
DIM = 6;
type Tmat = array[1..DIM,1..DIM] of Integer;

procedure CargarMatriz(var M: Tmat);
	var
		i,j,c,x: Integer;
begin
	c:=1;	
	for i := 1 to DIM do
	begin
		x:=DIM;
		for j := 1 to DIM do
		begin
			if i<j then
			begin
				if i mod 2 <> 0 then
				begin
					M[i,j]:=c;
				end
				else
				begin
					M[i,x]:=c;
				end;
				c:=c+1;
				x:=x-1;
			end
			else
			begin
				M[i,j]:=0;
			end;
		end;
	end;
end;

procedure MostrarMatriz(M: Tmat);
	var
		i,j: Integer;
begin
	for i := 1 to DIM do
	begin
	writeln;
		for j := 1 to DIM do
		begin
			write(M[i,j]:5);
		end;
	writeln;
	end;
end;

var
	M: Tmat;
BEGIN{MAIN}
	CargarMatriz(M);
	MostrarMatriz(M);
END.