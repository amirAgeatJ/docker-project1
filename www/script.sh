#!/bin/sh

sleep 4
echo " "
echo "------------------------------------------------------------------------------------------------"
echo "                             C O M P O S E R  C H E C K  V E R S I O N                          "
echo "------------------------------------------------------------------------------------------------"
echo " "
composer
echo " "
echo " "
echo "------------------------------------------------------------------------------------------------"
echo "                             C O M P O S E R  I N S T A L L A T I O N                           "
echo "------------------------------------------------------------------------------------------------"
echo " "
composer install --ignore-platform-reqs
echo " "
echo " "
echo "------------------------------------------------------------------------------------------------"
echo "                      D E P E N D E N C I E S  I N S T A L L A T I O N  N P M                   "
echo "------------------------------------------------------------------------------------------------"
echo " "
npm install
echo " "
echo " "
echo "------------------------------------------------------------------------------------------------"
echo "                                    N P M  R U N  B U I L D                                     "
echo "------------------------------------------------------------------------------------------------"
echo " "
npm run build
echo " "
echo "------------------------------------------------------------------------------------------------"
echo "                                    P H P  C O M M A N D S                                      "
echo "------------------------------------------------------------------------------------------------"
echo " "
php artisan key:generate
echo " "
echo "------------------------------------------------------------------------------------------------"
echo " "
php artisan migrate:fresh --seed
echo " "
echo "------------------------------------------------------------------------------------------------"