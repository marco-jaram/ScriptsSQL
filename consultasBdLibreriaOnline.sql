-- Consultas de bdLibreriaOnline



SELECT libro.titulo, autor.nombreAutor
FROM libro
JOIN autor ON libro.idAutor = autor.idAutor
WHERE autor.nombreAutor = 'Juan';

SELECT libro.titulo
FROM libro
JOIN tema ON libro.idTema = tema.idTema
WHERE tema.nombreTema = 'Filosofia';

SELECT libro.titulo, autor.nombreAutor, autor.apellido
FROM libro
JOIN tema ON libro.idTema = tema.idTema
JOIN autor ON libro.idAutor = autor.idAutor
WHERE tema.nombreTema = 'Filosofia';

SELECT libro.titulo, autor.nombreAutor, autor.apellido, tema.nombreTema
FROM libro
JOIN tema ON libro.idTema = tema.idTema
JOIN autor ON libro.idAutor = autor.idAutor
WHERE tema.nombreTema = 'Filosofia';



SELECT libro.titulo, tema.nombreTema
FROM libro
JOIN tema ON libro.idTema = tema.idTema
WHERE libro.titulo = 'Ego trasendental';

UPDATE libro
SET idTema = 6
WHERE titulo IN ('Critica de la razon pura',
                 'Ensayos Materialistas',
                 'Metafisica',
                 'Ego trasendental',
                 'El banquete',
                 'El ser y la nada',
                 'Las moscas',
                 'La nausea',
                 'Fenomenologia del espiritu',
                 'Por que el mundo no existe',
                 'El ser y el acontecimiento',
                 'Ideas relativas a una fenomenologia',
                 'El sussurro del lenguaje',
                 'El grado cero de la escritura',
                 'La muerte del autror',
                 'EL ser y el tiempo',
                 'El mundo como voluntad y representacion',
                 'El organon',
                 'Los problemas de la filosofía');




