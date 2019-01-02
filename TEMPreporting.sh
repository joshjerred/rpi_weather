TEMPER="$(python /var/www/html/gettemp.py)"
PRESS="$(python /var/www/html/getpress.py)"
TIME="$(python /var/www/html/time.py)"
echo "${TIME}"','"${TEMPER}" >> /var/www/html/temps.csv
echo "${TIME}"','"${PRESS}" >> /var/www/html/press.csv
tail -n +2 /var/www/html/temps.csv > /var/www/html/temps.tpm && mv /var/www/html/temps.tpm /var/www/html/temps.csv
tail -n +2 /var/www/html/press.csv > /var/www/html/press.tpm && mv /var/www/html/press.tpm /var/www/html/press.csv
sudo chmod -R 777 /var/www/html/temps.csv
sudo chmod -R 777 /var/www/html/press.csv
