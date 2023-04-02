```sh
sinfo
```

```sh
sinfo -e -o "%20N %20R %10c %10m %25f %20G %20z"
```

```sh
srun --nodes=1 --ntasks-per-node=1 hostname
```

```sh
srun --nodes=4 --ntasks-per-node=1 hostname
```

```sh
srun --nodes=1 --ntasks-per-node=8 hostname
```

```sh
srun --nodes=1 --ntasks-per-node=1 -C TitanX nvidia-smi -L
```

```sh
srun --nodes=1 --ntasks-per-node=1 --pty bash -i
```

```sh
srun --nodes=1 --ntasks-per-node=1 -w node202 hostname
```

```sh
srun --nodes=1 --ntasks-per-node=1 -w node204 -p fatq hostname
```

```sh
#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=3-00:00:00
#SBATCH --job-name=my_fun_job
#SBATCH --output /var/scratch/sswatman/fun_fun_fun/slurm-%j.out

set +e

sleep 10s
hostname
cat /proc/cpuinfo | grep "model name"
nvidia-smi -L
```

```sh
sbatch test.sh
```

```sh
sbatch -C TitanX test.sh
```
