#!/bin/bash
#usuarios.sh
#
# Mostra os logins e os nomes de usuarios do sistema.
#obs.: lê dados do arquivos /etc/passwd
#
# versão1: Mostra usuários e nomes separados por tab
#

cut -d : -f 1,5 /etc/passwd | tr : \\t