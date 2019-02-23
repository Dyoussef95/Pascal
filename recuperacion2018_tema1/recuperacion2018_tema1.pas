program recuperacion2018_tema1;
uses crt;
const
N = 6;
type Tmat = array[1..N,1..4] of Integer;
type Tvec = array[1..4] of Real;


procedure cargaCalificaciones(var M:Tmat;limInf,limSup: Integer);
	var
		i,j: Integer;
begin
	for i := 1 to N do
	begin
		for j := 1 to 4 do
		begin
			M[i,j]:=LimInf+random(LimSup+1-LimInf);
			write(M[i,j]:5);
		end;
		writeln;
	end;
end;

function Promedio(M: Tmat;columna: Integer): Integer;
	var
		i,a: Integer;
		p: Integer;
begin
	a:=0;
	for i := 1 to N do
	begin
		a:=a+m[i,columna];
	end;
	p:=a div N;
	Promedio:=p;
end;

function Mayor(V:Tvec;fila:Integer;var indice: Integer):Real;
	var
		i,may: Integer;
begin
	may:=V[1];
	indice:=1;
	for i := 1 to N do
	begin
		if V[i]>may then
		begin
			may:=V[i];
			indice:=i;
		end;
	end;
	Mayor:=may;
end;


var
	M: Tmat;
	V: Tvec;
	indice,i: Integer;
	a: Integer;
BEGIN 
	randomize;
	cargaCalificaciones(M,1,10);
	writeln;writeln;
	for i := 1 to 4 do
	begin
		V[i]:=Promedio(M,i);
	end;
	for i := 1 to 4 do
	begin
		write(V[i]:5:0);
	end;
	writeln;
	a:=Mayor(V,indice);
	writeln('La mayor calificacion es: ',a);
	if indice=1 then
	begin
		writeln('Corresponde a ateencion');
	end
	else if indice=2 then
	begin
		writeln('Corresponde a comida');
	end
	else if indice=3 then
	begin
		writeln('Corresponde a justicia');
	end
	else if indice=4 then
	begin
		writeln('Corresponde a buen ambiente');
	end;
	writeln('Columna :',indice);
END.