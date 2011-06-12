
for file in "$@"
do
  filename=${file##*/}
  if [[ "$filename" != "." && "$filename" != ".." ]]; then
    echo rm -rf ~/$filename
    echo ln -s $PWD/$file ~/$filename
    echo ""
  fi
#  rm -rf ~/$filename
#  ln -s $PWD/$file ~/$filename
done


