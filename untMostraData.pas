unit untMostraData;

interface
uses Forms, Windows, SysUtils;

function MostraData(dtData: TDateTime): string;

implementation


// Fun��o para apresenta��o de uma data no formato 'Dia da semana - DD/MM/AAAA

function MostraData(dtData: TDateTime): string;
var
   intDiaSemana: integer;
   strDiaSemana: string;
begin
     intDiaSemana := DayOfWeek(dtData);
     case intDiaSemana of
          1: strDiaSemana := 'Domingo - ';
          2: strDiaSemana := 'Segunda-feira - ';
          3: strDiaSemana := 'Ter�a-feira - ';
          4: strDiaSemana := 'Quarta-feira - ';
          5: strDiaSemana := 'Quinta-feira - ';
          6: strDiaSemana := 'Sexta-feira - ';
          7: strDiaSemana := 'S�bado - ';
     end;
     Result := strDiaSemana+DateToStr(dtData);
end;

end.


implementation

end.
