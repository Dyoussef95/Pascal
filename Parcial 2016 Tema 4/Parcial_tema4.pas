program Parcial_tema4;
uses crt;

type Vector = array[1..6] of Integer;

procedure CargarVector(var V: Vector);
	var 
	i: Integer;
begin
	for i := 1 to 6 do 
	begin
		V[i]:= 100 + random(900 + 1 - 100);
	end;
end;

procedure MostrarVector(V: Vector);
	var 
	i: Integer;
begin	
	for i := 1 to 6 do begin
		write(V[i]:5);
	end;
end;

procedure IntercambiarVectores(var V1: Vector; var V2: Vector);
	var 
	i,h,aux: Integer;
begin
	h:=6;
	for i := 1 to 6 do 
	begin
		aux:=V1[i];
		V1[i]:=V2[h];
		V2[h]:=aux;
		h:=h-1;
	end;
end;

var
V1,V2: Vector;
BEGIN 
	randomize;
	CargarVector(V1);
	CargarVector(V2);
	write('Vector V1: ');
	MostrarVector(V1);
	writeln;
	write('Vector V2: ');
	MostrarVector(V2);
	writeln;
	writeln;
	IntercambiarVectores(V1,V2);
	write('Vector V1: ');
	MostrarVector(V1);
	writeln;
	write('Vector V2: ');
	MostrarVector(V2);
	writeln;
END.