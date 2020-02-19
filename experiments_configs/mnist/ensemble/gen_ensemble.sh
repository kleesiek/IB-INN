for i in {0..9}; do
    cat << EOF > full_model_ensemb_${i}.ini
[checkpoints]
base_name = full_model_mnist
ensemble_index = $i
interval_checkpoint = 1000
interval_figure = 200
live_updates = False
interval_log = 240

[data]
dataset = MNIST
label_smoothing = 0.01

[training]
beta_IB = 1.0
n_epochs = 160
scheduler_milestones = [120]
optimizer = SGD
lr = 0.07

[model]
act_norm = 0.80
EOF
done
