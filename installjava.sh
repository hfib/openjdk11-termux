if [ -d "$PREFIX/jdk" ]
then
  echo "OpenJDK 11 уже установлен."
  exit
fi

echo "Скачивание OpenJDK 11..."
curl https://github.com/Hf1b/openjdk11-termux/raw/master/openjdk11.tar.xz -o ~/openjdk11.tar.xz -L &>/dev/null

echo "Распаковка OpenJDK 11..."
mkdir $PREFIX/jdk
tar -xf ~/openjdk11.tar.xz -C $PREFIX/jdk

echo "export JAVA_HOME=\$PREFIX" >> ~/.bashrc
echo "export PATH=\$PATH:$PREFIX/jdk/bin" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=\$PREFIX/jdk/lib:\$PREFIX/jdk/lib/jli" >> ~/.bashrc

rm ~/openjdk11.tar.xz
echo "Для работы OpenJDK 11 перезапустите Termux."
echo "Мой профиль: https://github.com/Hf1b"