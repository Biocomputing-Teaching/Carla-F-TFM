
#Train

chemprop_train --data_path data_chemprop/chemprop_train_normzs.csv --dataset_type regression  --save_dir ../df_checkpoint_normzs --target_columns pchembl_value --smiles_column Smiles --extra_metrics mae mse r2 


