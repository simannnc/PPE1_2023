230920
learnt how to use command lines 
cd, ls, pwd, cat, less, wc, echo, head, tail, mkdir, cp, mv, rm, rmdir, file...
un chemin absolu indique la position d’un fichier en partant de la racine. ex: /home/pierre/PPE1
un chemin relatif indique la position d’un fichier en partant du dossier courant. ex: ../../dev/input/mouse3

230927
learnt how to classify files
command lines such as  

cp [options] source dest
cp [options] source... directory
tree ./ |-doissier1 |-doissier2 | |-file1 ...
rm [options] name...
file
cut [-bn] [file]
cut [-c] [file]
cut [-df] [file]


04/10/2023
learnt difference between Git Reset, Git Revert
for the exercise, I didnt understand the error that appears when I tried to commit the message. This maybe is 
because I made changes on github and also on my local computer using terminal.

11/10/2023
pipelines
the command Cat, les chevrons (simple/double)
argument and script  
We had also discussed several words that can potentially be used for the project, such as disability and intelligence, which can be used for a wide range of contexts. 

18/10/2023
We have learnt how to use condition as well as for and while loop.
We have also discoverd lynx that allows to retrieve raw text and curl, which is to check url and text coding etc. 

25/10/2023
We did exercise on miniproject and learnt to retrive http code and web encoding etc.

8/11/2023
correct the project for last course
curl -s -L -w "%{content-type}" <url> | grep -P -o "charset=\K\S+" | cut -d "=" -f2 | tail -n 1
/k/ is the new feature in regular expression we leant today.\
K: \K is a special feature in some regular expression engines that resets the start of the match. It effectively means "keep out" and is used to control what is captured in the match. Everything before \K is ignored, and only the part after \K is captured.

15/11/2023
We learnt how to write an HTML page, which will be part of our final program. We have also looked at Bulma, which is a popular open-source CSS framework used for building responsive web interfaces. In the homework, we should modify the script we have for the miniproject for last course so that it can generate the http/bulma code automatically. 

22/11/2023
We worked on the aspiration of the pages HTML, counted the occurances, extracted the context and then the words that occur before and after the targeted word. And as Chinese is a langauge that does not have explicit boundary of words, we have to tokenize it first before extracting the concordances. 