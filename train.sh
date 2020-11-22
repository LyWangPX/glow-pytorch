#!/bin/bash
nohup python train.py ../sharp/ --img_size 128 --batch 14 --type sharp > sharp_11_23.out
python << END
import torch
torch.cuda.empty_cache()
print('success')
END
nohup python train.py ../blur/ --img_size 128 --batch 14 --type blur > blur_11_23.out
# ps -ef |grep nohup 
# kill -9