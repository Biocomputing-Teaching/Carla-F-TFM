conda activate tfm


#Train
python train.py  --data_path /Users/carlafeliu/Docs/Master/TFM/chemprop/data/tox21.csv --dataset_type classification --save_dir tox21_checkpoint

#predicting
chemprop_predict --test_path data/tox21.csv --checkpoint_dir /Users/carlafeliu/Docs/Master/TFM/chemprop/tox21_checkpoint --preds_path tox21_preds.csv


#Interpret
nohub chemprop_interpret --data_path data/tox21.csv --checkpoint_dir /Users/carlafeliu/Docs/Master/TFM/chemprop/tox21_checkpoint/fold_0/ --property_id 1 > interpret.log &