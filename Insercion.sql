use libreria;

describe tbl_ope_libro;
describe tbl_cat_editorial;
describe tbl_cat_genero;
describe tbl_cat_idioma;
describe tbl_hist_ventas;

select * from tbl_ope_libro;
select * from tbl_cat_editorial;
select * from tbl_cat_genero;
select * from tbl_cat_idioma;
select * from tbl_hist_ventas;

truncate tbl_cat_genero;
insert into tbl_cat_genero values(null,"Romance",1);
insert into tbl_cat_genero values(null,"Historia",1);
insert into tbl_cat_genero values(null,"Novela Negra",1);
insert into tbl_cat_genero values(null,"Fantasia",1);
insert into tbl_cat_genero values(null,"Ciencia Ficcion",1);
insert into tbl_cat_genero values(null,"Terror",1);
insert into tbl_cat_genero values(null,"Viajes",1);
insert into tbl_cat_genero values(null,"Humor",1);
insert into tbl_cat_genero values(null,"Comedia",1);

insert into tbl_cat_editorial values(null,"Alfaguara",1);
insert into tbl_cat_editorial values(null,"Gredos",1);
insert into tbl_cat_editorial values(null,"RM",1);
insert into tbl_cat_editorial values(null,"Planeta",1);
insert into tbl_cat_editorial values(null,"Lumen",1);
insert into tbl_cat_editorial values(null,"Taurus",1);
insert into tbl_cat_editorial values(null,"Trotta",1);


insert into tbl_cat_idioma values(null,"Ingles",1);
insert into tbl_cat_idioma values(null,"Español",1);
insert into tbl_cat_idioma values(null,"Frances",1);
insert into tbl_cat_idioma values(null,"Italiano",1);

CALL Add_Libro("Eleanor & Park",278,12,1,1,2);
CALL Consultar_Libro();
CALL Modificar_Libro(1,"El esclavo",7,125);

SELECT 
		lb.Libro_Id,
		lb.Libro_Nombre,
		ed.Editorial_Editorial,
		gn.Genero_Genero,
        lb.Libro_Costo,
		lb.Libro_Cantidad
    FROM tbl_ope_libro lb
    INNER JOIN tbl_cat_editorial ed on lb.Libro_EditorialId = ed.Editorial_Id
    INNER JOIN tbl_cat_genero gn on lb.Libro_GeneroId = gn.Genero_Id
    WHERE lb.Libro_Activo=1; 
    
    
    