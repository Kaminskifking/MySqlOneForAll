SELECT a.artistas AS artista, b.albuns AS album, COUNT(s.artistas_id) AS seguidores 
FROM SpotifyClone.artista AS a 
INNER JOIN SpotifyClone.album AS b ON a.artistas_id = b.artistas_id 
INNER JOIN SpotifyClone.seguidores AS s ON s.artistas_id = a.artistas_id  GROUP BY b.albuns_id ORDER BY seguidores DESC, artista, album;