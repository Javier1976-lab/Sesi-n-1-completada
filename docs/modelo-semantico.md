# Diseño del modelo semántico

## Estructura recomendada

Usa un esquema en estrella:

- Las tablas de hechos contienen eventos medibles, como ventas o consumos.
- Las dimensiones describen clientes, productos, centros y fechas.
- Las relaciones van desde cada dimensión hacia la tabla de hechos y suelen ser de uno a varios.

## Reglas prácticas

- Define el nivel de detalle de cada tabla antes de cargar datos.
- Utiliza claves estables para las relaciones.
- Evita relaciones bidireccionales salvo que exista una necesidad comprobada.
- Oculta columnas técnicas que no deban usar los autores de informes.
- Crea medidas explícitas para los indicadores de negocio.
- Mantén una tabla calendario única y márcala como tabla de fechas.
- Elimina columnas que no se utilicen para reducir el tamaño del modelo.

## Lista de comprobación

- [ ] Todas las tablas tienen un propósito documentado.
- [ ] No existen relaciones ambiguas.
- [ ] Las medidas tienen formato y descripción.
- [ ] Los nombres son claros y consistentes.
- [ ] Las credenciales se gestionan fuera del repositorio.
- [ ] La actualización se ha probado en Power BI Service.
