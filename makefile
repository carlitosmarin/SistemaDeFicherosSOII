#     Fichero: Makefile
#       Autor: Carlos Marin
#       Fecha: 05/02/2015
# Descripcion: Programa cliente. Para compilar, es recomendable emplear la aplicación make
# 		  Uso: makeCC = gcc

DEBUG = -g
CFLAGS = -pthread
PROGRAMS = mi_mkfs leer_sf mi_mkdir mi_chmod mi_ls mi_stat mi_cat mi_ln mi_rm escribir simulacion verificacion

BLOQUES = ./src/bloques.c
FB = ./src/ficheros_basico.c
F = ./src/ficheros.c
D = ./src/directorios.c
SEM = ./src/semaforo_mutex_posix.c

all: $(PROGRAMS)

%: %.c
	$(CC) $(DEBUG) $(CFLAGS) $(BLOQUES) $(FB) $(F) $(D) $(SEM) -o $@ $<

.PHONY: clean

clean:
	$(RM) -rf *.o $(PROGRAMS)