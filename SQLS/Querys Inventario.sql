--- Producto mas Rotado ---
SELECT id_dtienda, nombre, SUM(unidades) AS unidades, anio, mes, semana, dia FROM "Hechos_Inventarios"
INNER JOIN "Dimension_Producto" USING (id_dproducto)
INNER JOIN "Dimension_Tiempo_Inventario" USING (id_dtiempo)
GROUP BY id_dtienda, nombre, anio, mes, semana, dia
ORDER BY id_dtienda, anio, mes, semana, dia, unidades DESC;

--- Estanteria mas Rotado ---
SELECT id_dtienda, id_destanteria, nombre, SUM(unidades) AS unidades, anio, mes, semana, dia FROM "Hechos_Inventarios"
INNER JOIN "Dimension_Producto" USING (id_dproducto)
INNER JOIN "Dimension_Tiempo_Inventario" USING (id_dtiempo)
INNER JOIN "Dimension_Estanteria" USING (id_destanteria)
GROUP BY id_dtienda, id_destanteria, nombre, anio, mes, semana, dia
ORDER BY id_dtienda, anio, mes, semana, dia, unidades DESC;

--- Categoria mas Rotada ---
SELECT id_dtienda, "Dimension_Categoria".nombre, SUM(unidades) AS unidades FROM "Hechos_Inventarios"
INNER JOIN "Dimension_Producto" USING (id_dproducto)
INNER JOIN "Dimension_Producto_Categoria" USING (id_producto)
INNEr JOIN "Dimension_Categoria" USING (id_categoria)
GROUP BY id_dtienda, "Dimension_Categoria".nombre
ORDER BY id_dtienda, unidades DESC;

--- Categoria mas Rotada por Estantería ---
SELECT id_dtienda, id_destanteria, "Dimension_Categoria".nombre, SUM(unidades) AS unidades FROM "Hechos_Inventarios"
INNER JOIN "Dimension_Producto" USING (id_dproducto)
INNER JOIN "Dimension_Producto_Categoria" USING (id_producto)
INNEr JOIN "Dimension_Categoria" USING (id_categoria)
GROUP BY id_dtienda, id_destanteria, "Dimension_Categoria".nombre
ORDER BY id_dtienda, id_destanteria, unidades DESC;

--- Marca mas Rotada ---
SELECT id_dtienda, nombre, SUM(unidades) AS unidades FROM "Hechos_Inventarios"
INNEr JOIN "Dimension_Marca" USING (id_dmarca)
GROUP BY id_dtienda, nombre
ORDER BY id_dtienda, unidades DESC;

--- Categoria mas Rotada por Estantería ---
SELECT id_dtienda, id_destanteria, nombre, SUM(unidades) AS unidades FROM "Hechos_Inventarios"
INNEr JOIN "Dimension_Marca" USING (id_dmarca)
GROUP BY id_dtienda, id_destanteria, nombre
ORDER BY id_dtienda, id_destanteria, unidades DESC;