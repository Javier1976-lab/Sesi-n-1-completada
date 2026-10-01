# Kit inicial de Power BI

Repositorio de ejemplo para organizar un proyecto de Power BI de forma mantenible y segura.

## Contenido

- `docs/modelo-semantico.md`: criterios básicos para diseñar el modelo.
- `power-query/DimFecha.m`: consulta Power Query que genera una tabla calendario.
- `dax/medidas.dax`: medidas DAX de ejemplo.
- `.gitignore`: evita subir archivos temporales, credenciales y artefactos locales.

## Uso

1. Crea un proyecto PBIP desde Power BI Desktop cuando quieras versionar el informe y el modelo como archivos de texto.
2. Copia la consulta de `power-query/DimFecha.m` en una consulta en blanco.
3. Adapta las medidas de `dax/medidas.dax` a los nombres de tu modelo.
4. Documenta las relaciones, el nivel de detalle y las reglas de negocio antes de publicar.

## Seguridad

No guardes contraseñas, tokens, claves de API ni cadenas de conexión con secretos en el repositorio. Configura las credenciales en Power BI Service, una puerta de enlace o un almacén de secretos autorizado.

Los archivos incluidos usan datos y nombres ficticios.