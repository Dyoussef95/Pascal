program tema5_2017;
uses crt;
type Tmat = array[1..100,1..100] of Integer;

procedure CargarMatriz(var M: tmat;Dim,LimInf,LimSup: Integer);
var
	i,j: Integer;
begin
	for i := 1 to Dim do
	begin
		for j := 1 to Dim do 
		begin
			repeat
			M[i,j]:=liminf+random(limsup+1-liminf);
			until m[I,J] MOD 3 = 0;
		end;
	end;
end;

procedure MostrarMatriz(M: tmat;Dim: Integer);
var
	i,j: Integer;
begin
	for i := 1 to Dim do
	begin
	writeln;
		for j := 1 to Dim do
		begin
			write(M[i,j]:5);
		end;
	end;
end;

function EsMayor(M: Tmat;dim: Integer): Integer;
var
	i,j,mayor: Integer;
begin
	mayor:=M[1,1];{Suponemos que el primero es el mayor}
	for i := 1 to dim do
	begin
		for j := 1 to dim do
		begin
			if (i=j) or (i+1=j) or (i-1=j) then{recorro la matriz pero analizo solo el rango que pide el enunciado}
			begin
				if M[i,j]>mayor then{busco un numero mayor que el mayor actual}
				begin
					mayor:=M[i,j];{ese numero sera el nuevo mayor}
				end;
			end;
		end;		
	end;
	EsMayor:=mayor;
end;

var
	M: Tmat;
	dim,x: Integer;
BEGIN{MAIN}
	randomize;
	write('Ingrese la cantidad de filas: ');
	read(Dim);
	CargarMatriz(M,Dim,1,99);
	MostrarMatriz(M,Dim);
	writeln;
	x:=EsMayor(M,dim);
	writeln('El mayor es: ',x);
END.