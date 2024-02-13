CURRENT_DBVIS_VERSION_URL=https://www.dbvis.com/product_download/dbvis-24.1.2/media/dbvis_linux_24_1_2.rpm
DBVIS_RPM_NAME=dbvis_24_1_2.rpm
DBVIS_RPM_PATH=~/rpm/dbvis

mkdir -p $DBVIS_RPM_PATH
wget -O $DBVIS_RPM_PATH/$DBVIS_RPM_NAME $CURRENT_DBVIS_VERSION_URL

sudo rpm -i $DBVIS_RPM_PATH/$DBVIS_RPM_NAME
