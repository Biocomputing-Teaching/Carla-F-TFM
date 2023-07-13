#!/bin/bash
scripts=/Users/carlafeliu/Docs/Master/TFM/github/TFM/scripts_chemprop #aquí li dones una variable amb un path

#mkdir $scripts #Crees el directori de la variable 

#wget https://github.com/chemprop/chemprop/raw/master/data.tar.gz -O $scripts/data.tar.gz
#tar xvf $scripts/data.tar.gz #descomprimir el tar, això crearà la carpeta data
#wget https://github.com/chemprop/chemprop/raw/master/train.py -O $scripts/train.py #descarreguem i guardem l'script de train.py
wget https://github.com/chemprop/chemprop/blob/master/predict.py -O $scripts/predict.py
wget https://github.com/chemprop/chemprop/blob/master/interpret.py -O $scripts/interpret.py

#Train

python /Users/carlafeliu/Docs/Master/TFM/github/TFM/scripts_chemprop/train.py --data_path /Users/carlafeliu/Docs/Master/TFM/github/TFM/code/data_chemprop/chemprop_train.csv --dataset_type regression --save_dir /Users/carlafeliu/Docs/Master/TFM/github/TFM/df_checkpoint
#chemprop_predict --test_path /Users/carlafeliu/Docs/Master/TFM/github/TFM/data_chemprop/chemprop_train.csv --checkpoint_dir /Users/carlafeliu/Docs/Master/TFM/github/TFM/df_checkpoint --preds_path /Users/carlafeliu/Docs/Master/TFM/github/TFM/df_checkpoint/preds1.csv
#chemprop_predict --test_path /Users/carlafeliu/Docs/Master/TFM/github/TFM/data_chemprop/chemprop_train.csv --checkpoint_path /Users/carlafeliu/Docs/Master/TFM/github/TFM/df_checkpoint/fold_0/model_0/model.pt --preds_path chemp_preds.csv