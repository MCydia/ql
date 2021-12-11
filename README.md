
## 第一步
- 脚本适用于（ubuntu、debian、centos、openwrt）
- 一键安装青龙，包括（docker、任务、依赖安装，一条龙服务）
- N1或者其他晶晨系列盒子安装在root文件夹，其他设备都安装在opt文件夹内
- 除OPENWRT外，自动检测docker，有则跳过，无则执行安装
- openwrt请[编译](https://github.com/281677160/build-actions)之时加入docker,然后挂载好盘
- 如果您以前安装有青龙的话，则自动删除您的青龙容器和镜像，全部推倒重新安装
- 如果安装的当前文件夹里有青龙文件存在，[环境变量文件]又符合要求，就会继续使用

#### 🚩 一键安装青龙面板命令
#
- 为防止系统没安装curl，使用不了一键命令，使用一键安装青龙面板命令之前选执行一次安装curl命令

- 安装curl请注意区分系统，openwrt千万别另外安装curl，openwrt本身自带了，另外安装还会用不了
#

- 使用root用户登录ubuntu或者debian系统，后执行一下命令安装curl
```sh
apt -y update && apt -y install curl
```

- 使用root用户登录centos系统，后执行一下命令安装curl
```sh
yum install -y curl
```



---
- 安装完curl后，执行下面一键命令安装青龙+依赖+任务
```sh
bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/281677160/ql@main/ql.sh)"
```

## 第二步

#### 🚩 如果上面的命令运行成功会有提示，按提示操作登录面板


- 登录面板后，在‘ 环境变量 ’项添加 WSKEY 或者 PT_KEY

- 添加 wskey 或者 pt_key 都要注意KEY里面的分号，英文分号，记得别省略了，WSKEY和PT_KEY二选一即可

- 格式如下：

```sh
# > 添加 wskey

名称
JD_WSCK

值
pin=您的账号;wskey=您的wskey值



# > 添加PT_KEY

名称
JD_COOKIE

值
pt_key=您的pt_key值;pt_pin=您的账号;
```

#
#### 🚩 单独安装某项的一键脚本


- 一键单独安装docker
```sh
wget -O docker.sh https://ghproxy.com/https://raw.githubusercontent.com/281677160/ql/main/docker.sh && bash docker.sh
```

- 一键安装单独青龙的依赖
```sh
docker exec -it qinglong bash -c  "$(curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/281677160/ql/main/npm.sh)"
```
## 感谢！

> [`whyour`](https://github.com/whyour/qinglong)
#
- # 捐赠
- 如果你觉得此项目对你有帮助，请请我喝一杯82年的凉白开，感谢！

-微信-
# <img src="https://github.com/danshui-git/shuoming/blob/master/doc/weixin4.png" />
#
