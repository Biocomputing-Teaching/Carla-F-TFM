conda activate tfm

CHEMPROP_RES=$HOME/scratch #aquí li dones una variable amb un path

mkdir $CHEMPROP_RES #Crees el directori de la variable 

wget https://github.com/chemprop/chemprop/raw/master/data.tar.gz -O $CHEMPROP_RES/data.tar.gz
tar xvf $CHEMPROP_RES/data.tar.gz #descomprimir el tar, això crearà la carpeta data
wget https://github.com/chemprop/chemprop/raw/master/train.py -O $CHEMPROP_RES/train.py #descarreguem i guardem l'script de train.py

#Train
python $CHEMPROP_RES/train.py  --data_path /Users/carlafeliu/DOcs/Master/TFM/github/TFM/df.csv --dataset_type classification --save_dir /Users/carlafeliu/DOcs/Master/TFM/github/TFM/df_checkpoint

#predicting
chemprop_predict --test_path /Users/carlafeliu/DOcs/Master/TFM/github/TFM/df.csv --checkpoint_dir /Users/carlafeliu/DOcs/Master/TFM/github/TFM/df_checkpoint --preds_path /Users/carlafeliu/DOcs/Master/TFM/github/TFM/df_preds.csv


#Interpret
nohub chemprop_interpret --data_path /Users/carlafeliu/DOcs/Master/TFM/github/TFM/df.csv --checkpoint_dir /Users/carlafeliu/DOcs/Master/TFM/github/TFM/df_checkpoint/fold_0/ --property_id 1 > /Users/carlafeliu/DOcs/Master/TFM/github/TFM/interpret.log &