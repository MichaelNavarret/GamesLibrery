CREATE TABLE JUEGO (
	idJuego varchar(50) NOT NULL PRIMARY KEY,
	nombre varchar(100) NOT NULL,
	codTipo char(3) NOT NULL,
	codEstado char(3) NOT NULL,
	codSaga char(3) NULL
);


CREATE TABLE TIPO (
	idTipo char(3) NOT NULL PRIMARY KEY,
	nombre varchar(20) NOT NULL
);

CREATE TABLE DESARROLLADORA (
	idDesarrolladora char(3) NOT NULL PRIMARY KEY,
	nombre varchar(20) NOT NULL
);

CREATE TABLE SAGA (
	idSaga char(3)  NOT NULL PRIMARY KEY,
	nombre varchar(20) NOT NULL
);

CREATE TABLE WISHLIST (
	idWishList int NOT NULL IDENTITY (1,1) PRIMARY KEY,
	fechaCreacion date NOT NULL,
	cantJuegos int NOT NULL
);

CREATE TABLE WISHLIST_JUEGO (
	idWishJuego int NOT NULL IDENTITY (1,1) PRIMARY KEY,
	idJuego varchar(50) NOT NULL,
	idWishList int NOT NULL,
	fechaIngreso date NOT NULL
);
