#!/bin/bash
#__________________________________________________________________________________________________

# DO NOT use GPU IDs (gpu_id) other than 3 for DGX. We only allowed to use gpu_id=3.
gpu_id="3"
data_dir="../nlp_preprocessing/data"
#__________________________________________________________________________________________________

if [ ! -d "models" ]; then
        mkdir models
fi
#__________________________________________________________________________________________________

# Initial running
python ./train.py -model ./models/en.sgd.iter-.2.pth -train ${data_dir}/news.aligned.en.refined.tok.bpe.txt -valid ${data_dir}/test.en.tok.bpe.txt -print_every 50 -gpu_id ${gpu_id} -iter_ratio_in_epoch .2 -n_epochs 20
