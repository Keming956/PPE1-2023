#!/usr/bin/env bash

if [[ $# -ne 1 ]];
then
	echo "On veut exactement un argument au script."
	exit
fi

URLS=$1

if [ ! -f $URLS ]
then
	echo "On attend un fichier, pas un dossier"
	exit
fi

echo "<!DOCTYPE html>
		<html lang="fr">
		<head>
   		 <meta charset="UTF-8" />
   		 <title>Tableaux</title>
			<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
			<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
		</head>
		<body>" > miniprojet.html #html的开头
echo "		<div class="container text-center">
            <table class="table table-striped">
                <thead>
                  <tr>
                    <th scope="col">ligne</th>
                    <th scope="col">URL</th>
                    <th scope="col">code HTTP</th>
                    <th scope="col">encodage</th>
                  </tr>
                </thead>
				<tbody>
	 " >> miniprojet.html


lineno=1
while read -r URL
do
	response=$(curl -s -I -L -w "%{http_code}" -o /dev/null $URL)
	encoding=$(curl -s -I -L -w "%{content_type}" -o /dev/null $URL | ggrep -P -o "charset=\S+" | cut -d"=" -f2 | tail -n 1)
	echo "<tr>
    <th scope="row">$lineno</th>
    <td>$URL</td>
    <td>$response</td>
    <td>$encoding</td>
    </tr>" >> miniprojet.html
	lineno=$(expr $lineno + 1)
done < "$URLS"


echo "		</tbody>
              </table>
            </div>
		</body>
	</html>
			" >> miniprojet.html