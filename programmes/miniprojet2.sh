#!/usr/bin/env bash

file=$1
lineno=1

if [ $# -ne 1 ]; then
    echo "It needs 1 argument."
    exit
else
    if [ -f $file ]; then
        echo "The file exists."
    else
        echo "We need a file that exists."
        exit
    fi
fi

echo -e "<html>
    <head>
        <meta charset=\"utf-8\">
        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
        <title>tableau-fr</title>
        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css\">
    </head>
    <body>
        <h1 class=\"title has-text-centered\">Tableau</h1>
        <table class=\"table is-bordered is-striped is-narrow is-hoverable is-fullwidth\">
            <tr>
                <th>index</th>
                <th>urls</th>
                <th>code HTTP</th>
                <th>encodage</th>
            </tr>" > ../tableaux/tableau-fr.html

while read -r line
do
    code=$(curl -I -L -s -w "%{http_code}" -o /dev/null $line)
    charset=$(curl -I -s -L -w "%{content_type}" -o /dev/null $line | grep -P -o "charset=\S+" | cut -d = -f 2)	
    echo "    
        <tr>
            <td>$lineno</td>
            <td>$line</td>
            <td>$code</td>
            <td>$charset</td>
        </tr>" >> ../tableaux/tableau-fr.html

    lineno=$((lineno + 1))
done < "$file" 

echo "</table>
    </body>
</html>" >> ../tableaux/tableau-fr.html