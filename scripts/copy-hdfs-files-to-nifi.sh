#!/bin/bash
echo "  _   _                 _                    ";
echo " | \ | |               | |                   ";
echo " |  \| | _____   ____ _| | _____  _ __ _ __  ";
echo " | . \` |/ _ \ \ / / _\` | |/ / _ \| '__| '_ \ ";
echo " | |\  | (_) \ V / (_| |   < (_) | |  | |_) |";
echo " |_| \_|\___/ \_/ \__,_|_|\_\___/|_|  | .__/ ";
echo "                                      | |    ";
echo "                                      |_|    ";
echo "This script will copy core-site.xml and hdfs-site.xml into the nifi container"

docker cp ../config/hdfs/. nifi:/opt/nifi/hdfs-config