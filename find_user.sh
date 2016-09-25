#!/bin/bash
#usuarios.sh
#
# Mostra os logins e os nomes de usuarios do sistema.
#obs.: lê dados do arquivos /etc/passwd
#
# versão1: Mostra usuários e nomes separados por tab
#

MENSAGE_USO="
	Uso: $0 [-h]
	-h mostra esta tela de ajuda e sai
"

#Tratamento da linha de comando:
if test "$1" = "-h"
	then echo "$MENSAGE_USO"
	exit 0
fi

cut -d : -f 1,5 /etc/passwd | tr : \\t