#!/bin/sh
cp /home/ubuntu/HackerNews/YooChoose/notebook/*.ipynb .
jupyter nbconvert *.ipynb

rm README.md
touch README.md

echo "#AI Conference Workshop - Recommendation Systems" >> README.md
echo " ---------------------------------------------------------" >> README.md
echo "         " >> README.md

for entry in *.html
do
  echo "![$entry]($entry)" >> README.md
done

git add *.html README.md
git commit -m "updated html"
git push origin master
