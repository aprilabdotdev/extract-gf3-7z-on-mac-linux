echo "Cloning from github..."
git clone https://github.com/jinfeihan57/p7zip.git $HOME/.p7zip  # clone to .p7zip

echo "Compiling..."
cd $HOME/.p7zip
make 7z
make 7za

echo "Testing..."
./bin/7z i


echo "Add .p7zip/bin to system path in \$HOME/.profile..."
echo "# add pizip bin to PATH" >> ~/.profile
echo "PATH=\"\$HOME/.p7zip/bin:\$PATH\"" >> ~/.profile
