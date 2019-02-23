Program intercambiomatriz;
uses crt;
const dim1=5;
	  

Type TMAT= array [1.. Dim1,1..dim1] of integer;

procedure CargarMatriz (var m: TMAT;LimInf,LimSup: integer);
var i,j: integer;
begin
	for i:= 1 to dim1 do 
	begin
		for j:= 1 to dim1 do
		begin  
		    m[i,j]:= LimInf + random (LimSup+1- LimInf);
		end;
	end;
end;

procedure MostrarMatriz (m:TMAT);
var i,j: integer;
begin
	for i:= 1 to dim1 do 
	begin
		for j:= 1 to dim1 do
		begin  
		    write(m[i,j]:7);
		end;
		writeln;
	end;
end;

procedure Intercambiar(var M:Tmat);
	var
		i,j,aux: Integer;
begin
	for i := 1 to dim1 do
	begin	
		for j:=1 to 3 do 
		begin 	
		aux:=M[i,i+1];
		M[i,i+1]:=M[i+1,i];
		M[i+1,i]:=aux;
		end;		
	end;
end;

{MAIN} 
var m:TMAT;
begin
randomize;
CargarMatriz(m,100,999);
MostrarMatriz(m);
Intercambiar(M);
WRITELN;WRITELN;
MostrarMatriz(m);
end.













