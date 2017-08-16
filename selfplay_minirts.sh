MODEL=$1

game=./rts/game_MC/game model_file=./rts/game_MC/model model=actor_critic taskset -c 30-40 python3 selfplay.py  --num_games 1024 --batchsize 128 --tqdm --fs_opponent 50 --latest_start 0 --opponent_type AI_NN --trainer_stats winrate --additional_labels id,last_terminal --load ${MODEL} --gpu 4 --T 20 
