cd

echo "downloading binary...."
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip

echo "extracting..."
unzip sonar-scanner-cli-4.6.2.2472-linux.zip

sudo mv sonar-scanner-cli-4.6.2.2472-linux /opt/sonar-scanner

sudo sed 's/#sonar/sonar/' /opt/sonar-scanner/conf/sonar-scanner.properties > sonar-scanner.properties.temp && mv sonar-scanner.properties.temp /opt/sonar-scanner/conf/sonar-scanner.properties 

#rm sonar-scanner-cli-4.6.2.2472-linux.zip

echo "adding to PATH"
echo '\nexport PATH="$PATH:/opt/sonar-scanner/bin"' >> .bashrc

source .bashrc

echo "printing sonar-scanner version"
sonar-scanner -v

echo "installation complete.............."