#/bin/bash +x

#14/03/2021
#Ricardo Vieira de Souza 
#
#ricardosouza.suporte@outlook.com

convert_imagem(){
cd /home/rvs/Downloads/CURSO_ALURA/imagens-livros
if [ ! -d png ]
then
	mkdir png
fi


for imagem in *.jpg
do
     local imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')


	convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
done
}

convert_imagem 2>logs.txt

if [ $? == 0 ]
then
	echo "Conversão reailizada com sucesso"
else 
	echo "Conversão retornou erro"
fi

