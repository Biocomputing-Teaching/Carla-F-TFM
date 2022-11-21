conda activate tfm
#descarrega els fitxers
#HOME es una variable de la shell, t'ho guarda al inici 

CHEMPROP_RES=$HOME/scratch #aquí li dones una variable amb un path
mkdir $CHEMPROP_RES #Crees el directori de la variable 
wget https://github.com/chemprop/chemprop/blob/master/data.tar.gz -O $CHEMPROP_RES/data.tar.gz
tar zxvf $CHEMPROP_RES/data.tar.gz #descomprimir el tar, això crearà la carpeta data

#Train
python train.py  --data_path $CHEMPROP_RES/data/tox21.csv --dataset_type classification --save_dir $CHEMPROP_RES/tox21_checkpoint

#predicting
chemprop_predict --test_path $CHEMPROP_RES/data/tox21.csv --checkpoint_dir $CHEMPROP_RES/tox21_checkpoint --preds_path $CHEMPROP_RES/tox21_preds.csv


#Interpret
nohub chemprop_interpret --data_path $CHEMPROP_RES/data/tox21.csv --checkpoint_dir $CHEMPROP_RES/tox21_checkpoint/fold_0/ --property_id 1 > $CHEMPROP_RES/interpret.log &