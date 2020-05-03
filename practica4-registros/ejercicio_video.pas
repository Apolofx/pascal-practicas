program ejercicio_video;

procedure leerRegistro(var lugar:sitio);
begin
writeln('Ingrese el nombre del lugar');
readln(lugar.nombre);
writeln('Ingrese la provincia');
readln(lugar.provincia);
writeln('Ingrese la cantidad de actividades');
readln(lugar.cant_actividades);
writeln('Ingrese la cantidad de personas');
readln(lugar.cant_personas);
end;

procedure actualizarMaximo(lugar:sitio; var max:maximo);
begin
  if (lugar.cant_actividades >= max.cantidad) then
  begin
    max.cantidad := lugar.cant_actividades;
    max.nombre := lugar.nombre;
  end;
end;

procedure actualizarVisitados(lugar:sitio; var masVisitados:integer);
begin 

  if (lugar.cant_personas > 20000) then begin
    masVisitados := masVisitados + 1;
  end;
end;
Type
maximo = record
  cantidad: integer;
  nombre: string;
end;

sitio = record
  nombre: string;
  provincia: string;
  cant_actividades: integer;
  cant_personas: integer;
end;

var
maxActividades:maximo;
lugar: sitio;
masVisitados:integer;

begin
masVisitados:=0; 
maxActividades.cantidad:=-1;
leerRegistro(lugar);
while(lugar.nombre <> 'fin') do begin

  leerRegistro(lugar);
end;
writeln('El sitio con mayor cantidad de actividades fue ', maxActividades.nombre);
writeln('La cantidad de lugares con mas de 20000 visitantes en un mes fue de ', masVisitados);
end.