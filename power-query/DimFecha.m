let
    Hoy = Date.From(DateTime.LocalNow()),
    FechaInicio = Date.StartOfYear(Date.AddYears(Hoy, -2)),
    FechaFin = Date.EndOfYear(Date.AddYears(Hoy, 2)),
    NumeroDias = Duration.Days(FechaFin - FechaInicio) + 1,
    Fechas = List.Dates(FechaInicio, NumeroDias, #duration(1, 0, 0, 0)),
    Tabla = Table.FromList(Fechas, Splitter.SplitByNothing(), {"Fecha"}),
    TipoFecha = Table.TransformColumnTypes(Tabla, {{"Fecha", type date}}),
    Anio = Table.AddColumn(TipoFecha, "Año", each Date.Year([Fecha]), Int64.Type),
    MesNumero = Table.AddColumn(Anio, "Mes número", each Date.Month([Fecha]), Int64.Type),
    Mes = Table.AddColumn(MesNumero, "Mes", each Date.MonthName([Fecha], "es-ES"), type text),
    Trimestre = Table.AddColumn(Mes, "Trimestre", each "T" & Text.From(Date.QuarterOfYear([Fecha])), type text),
    AnioMes = Table.AddColumn(Trimestre, "Año-Mes", each Date.ToText([Fecha], "yyyy-MM"), type text),
    DiaSemanaNumero = Table.AddColumn(AnioMes, "Día semana número", each Date.DayOfWeek([Fecha], Day.Monday) + 1, Int64.Type),
    DiaSemana = Table.AddColumn(DiaSemanaNumero, "Día semana", each Date.DayOfWeekName([Fecha], "es-ES"), type text)
in
    DiaSemana
