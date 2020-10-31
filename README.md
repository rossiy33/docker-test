# conda-base

## run
```bash
docker run --name=conda-base ppp8docker/conda-base
```

debianに最新miniconda3を入れて、updateをしただけのやつ

PATHをDockerfileに入れてあるため、非ログインユーザでも何も考えずに起動して「conda」が使える。

~/.profileにconda activateしてあるので、そのままbase環境に入れる。

shでもbashでも大丈夫！と思う

他は知らんけど。
