
SELECT * FROM article;
SELECT * FROM categorie;
SELECT * FROM permission;
SELECT * FROM user;

SELECT thetitle, thetext, thename, thedate, iduser, idarticle FROM article 
INNER JOIN user ON  user.iduser = article.idarticle 
INNER JOIN article on article.idarticle = categorie_idcategorie 
INNER JOIN categorie_has_article on categorie_has_article.categorie_idcategorie = categorie.idcategorie;