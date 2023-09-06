
#Train

chemprop_train --data_path data_chemprop/chemprop_train_nonorm.csv --dataset_type regression  --save_dir ../df_checkpoint --target_columns pchembl_value --smiles_column Smiles --extra_metrics mae mse r2 


