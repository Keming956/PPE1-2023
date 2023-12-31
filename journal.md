# Journal
## Séance 1
C'est la première fois que j'apprends la commande de ligne. J'ai rencontré un peu de problèmes et j'ai réglé quelques-uns :
1. Au début, je ne trouve pas les chemins de mon fichier facilement car j'utilise icloud. Après des recherches en ligne, j'ai trouvé sur Github un plugin appelé "Openinterminal" qui me permets d'obtenir le chemin facilement. De plus, j'ai téléchargé aussi queleques d'autres plugins pour améliorer mon "terminal"
2. C'est bien de demander à ChatGPT quand je rencontre de problèmes, elle est assez forte par rapport à mon niveau actuel.
3. Dans l'exercise, je n'ai pas trouvé une demander pour copier les fichiers ".txt" rapidement vers le dossier du mois. J'ai tapé mois par mois, je suis sûr qu'il existe une façon plus efficace. Et pour les photos, je ne peux pas catégoriser dont le nom de ficher ne comprend pas le lieux.
4. Il me faut encore faire plus d'exercises pour être familier avec les commandes.

## Séance 2
Pour l'exercice de la 1re séance, je n'arrive pas à catégoriser les images par le lieu, parce que le nom des fichiers n'indique pas le lieu. **faut demander aux profs**

Pour l'exercice du git, je ne pouvais pas cloner mon propre git parce que j'ai déjà un git appelé "PPE1-2023", même s'ils ne sont pas dans le même directory. Finalement j'ai utilisé VS Code pour cloner mon propre git sur mon ordinateur. 

Mis à jour : j'ai trouvé la raison, je n'avais pas changé le chemin, donc je restais toujours dans le même directory.

Mais il y a un problème avec la commande git commit. Il semble qu'il faut que j'ajoute le jounal cloné du Guthub avec la commande "add file", sinon je ne peux pas "commit"

## Séance 3
J'ai effectué plusieurs "resets" et ne les ont pas poussé, donc il existait pas mal de différences entre mon git local et celui en ligne. Finalement, grâce à la fonction "reset --hard", j'ai pu réussir à supprimer tous les changements.

## Séance 4
Cette semaine, de nombreuses commandes ont apparu (surtout les syntaxes après la commande, par exemple, sort -r, -nr, uniq -c etc.), ce qui rend difficile à comprendre et à retenir, et il faut prendre les temps et faire des exercices pour devenir à l'aise. Par conséquent, j'ai dû mal à faire les exercices. Mais heureusement j'ai pu me renseigner auprès des camarades. Mais je ne suis pas sûr que j'ai compris la partie de script “affectation" et "utilisation" vu que cela a vite passé.

## Séance 5

Tout d'abord, je voudrais déclarer mon groupe pour le projet. Je suis dans un groupe avec Baptise Gillet (Paris Nanterre) et Marie Delporte-Landat (Paris 3), et moi d'INALCO, ce qui n'a pas posé le problème inalcolique heureusement.

Récemment, dans tous les cours de programmation, nous apprenons le « if » et « while », ce qui m'aide à réviser un peu car le logique se ressemble entre ces langages.

Pendant les exercices, quelques fois, il faut bien ajouter l'espace, comme if [[ ]], d'autres fois, il ne le faut pas, comme l'affectation, ce qui est différent avec des autres langages. Je suis un peu perdu dans ce type de différence.



## Séance 6

Cette semaine, avec notre groupe, on a décidé de choisir le mot "devoir" pour le projet.

Concernant l'exercice, j'ai quelques remarques. 

1. Il faut grep -E pour utiliser les expressions régulières après

2. J'ai appris une nouvelle fonction "awk" grâce au Chatgpt, et aussi tr -d pour éviter des choses inattendues

3. Je suppose que les erreurs pouvant être corrigés sont des codes 3XX, ce qui veut dire "redirection". Cependant, j'ai essayé la fonction curl -L, mais le résultat devient :

   1	200	UTF-8	https://fr.wikipedia.org/wiki/Robot

   2	200	UTF-8	https://fr.wikipedia.org/wiki/Robot_de_cuisine

   3	301

   200	UTF-8	fr.wikipedia.org/wiki/Robot_d%27indexation

   4	200	UTF-8	https://fr.wikipedia.org/wiki/Bot_informatique

   5	404	UTF-8	https://fr.wikipedia.org/wiki/Robot_(Leonard_de_Vinci)

   6	502		https://roboty.magistry.fr 

   Donc je crois que j'ai échoué de le corriger.


### Séance 7

Au cours, j'ai appris une nouvelle fonction "Perl", ce qui est une version plus forte que "-E", pour macOS, il faut utiliser "ggrep".

Pendant les exercices, j'ai quelques remarques.

**Exo-1 :** \w pour macther tous les "words", y compris les lettres et les chiffres

tr "1" "2" : on utilise 2 pour remplacer 1

**Exo-2** :  number_of_words=${2:-25} : 2 veut dire que le 2e variable, en cas de manque d'arguments, ce sera 25

grep -v '^$' : exclure des lignes vides ; -v veut dire "exclure", "^$" représente le début et la fin d'une ligne

**Exo-3** : paste - - : créer des bigrammes  

j'ai cherché la fontion "paste" : si on excute 

echo -e "apple\nbanana\ncherry" | paste - -"

le résultat sera 

apple   banana
banana  cherry

**Exo-HTML** : heureusement, on a un cours de HTML/CSS à l'Inalco, cet exercice n'est pas trop difficle pour moi

### Séance 8

J'ai complètement malcompris la consigne pour la partie HTML de la dernière séance. On était demandé d'écrire un scripte shell afin de générer le page HTML.

Cette semaine, on a appris de créer notre page HTML à partir de notre dépôt, grâce au fichier `index.html`. Et puis, pour affiner le page, on peut utiliser des librairies. Heureusement, on a un cours de HTML/CSS, où j'ai connu le Bootstrap, donc je l'ai utilisé au lieu de Bulma.

### Séance 9

J'ai rencontré de nouveaux problèmes pour ce projet du groupe. Surtout concernant le chinois, j'ai trouvé 50 URLs. Mais Il n'y a qu'un seul qui marche avec le script. Cependant, quand je tape `curl [URL]` dans le terminal, ça peut marcher. Pareil pour `curl -I` quand je récupère l'encodage, avec un seul lien, ça ne pose pas de problème dans le terminal. Mais une fois, avec le script, ça ne donne rien. Il y a seulement `lynx`, j'ai fait des recherches, et trouve cette option `lynx -dump -assume_charset=utf-8 -display_charset=utf-8` pour que ça fonctionne correctement pour le chinois.



### Séance 10

Tout d'abord, pour régler le problème de la semaine dernière, il suffit d'écrire le ficher URL avec un logiciel non-MacOS, sinon , le retour de ligne sera "CRLF", qui empêche de lire les URLs.

Cette semaine, il y a encore de problèmes avec `sed` en chinois. Avec français et angais, cela ne pose aucun problème. Donc je n'ai pas pu générer les pages de concordances.

Avec le scripte d'iTrameur, j'ai encore des soucis avec le chinois, c'est écrit `sed: RE error: illgeal byte sequence`
