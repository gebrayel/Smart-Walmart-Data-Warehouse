--- Producto mas Rotado ---
SELECT DISTINCT ON (dia) id_dtienda, nombre, SUM(unidades) AS unidades, dia FROM "Hechos_Inventarios"
INNER JOIN "Dimension_Producto" USING (id_dproducto)
INNER JOIN "Dimension_Tiempo_Inventario" USING (id_dtiempo)
GROUP BY id_dtienda, nombre, dia
ORDER BY dia, id_dtienda, unidades DESC;

--- Estanteria mas Rotado ---
SELECT DISTINCT ON (dia) id_dtienda, id_destanteria, nombre, SUM(unidades) AS unidades, dia FROM "Hechos_Inventarios"
INNER JOIN "Dimension_Producto" USING (id_dproducto)
INNER JOIN "Dimension_Tiempo_Inventario" USING (id_dtiempo)
INNER JOIN "Dimension_Estanteria" USING (id_destanteria)
GROUP BY id_dtienda, id_destanteria, nombre, anio, mes, semana, dia
ORDER BY dia, id_dtienda, unidades DESC;

--- Categoria mas Rotada ---
SELECT DISTINCT ON (id_dtienda) id_dtienda, "Dimension_Categoria".nombre, SUM(unidades) AS unidades FROM "Hechos_Inventarios"
INNER JOIN "Dimension_Producto" USING (id_dproducto)
INNER JOIN "Dimension_Producto_Categoria" USING (id_producto)
INNEr JOIN "Dimension_Categoria" USING (id_categoria)
GROUP BY id_dtienda, "Dimension_Categoria".nombre
ORDER BY id_dtienda, unidades DESC;

--- Categoria mas Rotada por Estantería ---
SELECT DISTINCT ON (id_dtienda) id_dtienda, id_destanteria, "Dimension_Categoria".nombre, SUM(unidades) AS unidades FROM "Hechos_Inventarios"
INNER JOIN "Dimension_Producto" USING (id_dproducto)
INNER JOIN "Dimension_Producto_Categoria" USING (id_producto)
INNEr JOIN "Dimension_Categoria" USING (id_categoria)
GROUP BY id_dtienda, id_destanteria, "Dimension_Categoria".nombre
ORDER BY id_dtienda, id_destanteria, unidades DESC;

--- Marca mas Rotada ---
SELECT DISTINCT ON (id_dtienda) id_dtienda, nombre, SUM(unidades) AS unidades FROM "Hechos_Inventarios"
INNEr JOIN "Dimension_Marca" USING (id_dmarca)
GROUP BY id_dtienda, nombre
ORDER BY id_dtienda, unidades DESC;

--- Marca mas Rotada por Estantería ---
SELECT DISTINCT ON (id_dtienda) id_dtienda, id_destanteria, nombre, SUM(unidades) AS unidades FROM "Hechos_Inventarios"
INNEr JOIN "Dimension_Marca" USING (id_dmarca)
GROUP BY id_dtienda, id_destanteria, nombre
ORDER BY id_dtienda, id_destanteria, unidades DESC;