SELECT
    p.project_id AS proyecto_id,
    p.nombre_proyecto AS nombre_proyecto,
    c.nombre_componente AS nombre_componente,
    s.nombre_subcomponente AS nombre_subcomponente
FROM
    Proyectos p
LEFT JOIN
    Proyectos_Componentes pc ON p.project_id = pc.project_id
LEFT JOIN
    Componentes c ON pc.component_id = c.component_id
LEFT JOIN
    Proyectos_Subcomponentes ps ON p.project_id = ps.project_id
LEFT JOIN
    Subcomponentes s ON ps.subcomponent_id = s.subcomponent_id
ORDER BY
    p.project_id, c.nombre_componente, s.nombre_subcomponente;


/*Consulta buscar con que proyectos o componentes se relaciona un subcomponente*/
SELECT
    s.nombre_subcomponente AS nombre_subcomponente,
    c.nombre_componente AS nombre_componente,
    p.nombre_proyecto AS nombre_proyecto
FROM
    Proyectos p
INNER JOIN
    Proyectos_Subcomponentes ps ON p.project_id = ps.project_id
INNER JOIN
    Subcomponentes s ON ps.subcomponent_id = s.subcomponent_id
LEFT JOIN
    Componentes_Subcomponentes cs ON s.subcomponent_id = cs.subcomponent_id
LEFT JOIN
    Componentes c ON cs.component_id = c.component_id
WHERE
    s.nombre_subcomponente = 'DB';

/*Consulta buscar con que proyectos o subcomponentes se relaciona un componente*/
SELECT
    c.nombre_componente AS nombre_componente,
    p.nombre_proyecto AS nombre_proyecto,
    s.nombre_subcomponente AS nombre_subcomponente
FROM
    Componentes c
LEFT JOIN
    Componentes_Subcomponentes cs ON c.component_id = cs.component_id
LEFT JOIN
    Subcomponentes s ON cs.subcomponent_id = s.subcomponent_id
LEFT JOIN
    Proyectos_Subcomponentes ps ON s.subcomponent_id = ps.subcomponent_id
LEFT JOIN
    Proyectos p ON ps.project_id = p.project_id
WHERE
    c.nombre_componente = 'Server Web';