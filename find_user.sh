#!/bin/bash
#usuarios.sh
#
# Mostra os logins e os nomes de usuarios do sistema.
#obs.: lê dados do arquivos /etc/passwd
#
# versão1: Mostra usuários e nomes separados por tab
#
# versão2: Adicionado a opção -h de ajuda
#
# versão3: Substituição do if pelo case, adicionado -v: versão e *:opão inválida
#

MENSAGE_USO="
	Uso: $0 [-h | -v]
	-h mostra esta tela de ajuda e sai
"

#Adicionar case
case "$1" in 
	-h)
			echo "$MENSAGE_USO"
			exit 0
	;;
	
	-v)
			echo $0 versão 3
			exit 0
	;;
	
	*)
			echo Opção inválida: $1	
			exit 1
	;;
esac

cut -d : -f 1,5 /etc/passwd | tr : \\t