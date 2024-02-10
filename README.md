自用兆能m2固件，后台地址：192.168.1.1，密码：password
adguardhone插件订阅的规则会占用硬盘，存储空间不够就一直无法订阅，建议插个U盘把adguardhome的路径全部替换转移过去，规则多了及其吃内存，建议使用改成1G的机器
adguardhome的缓存日志会一直占用空间，可以通过计划任务删除那个文件  把路径修改为自己的路径就行，具体内容来自恩山帖子 https://www.right.com.cn/FORUM/thread-8309079-1-1.html
50 5 * * * [ -f /usr/bin/AdGuardHome/data/querylog.json.1 ] && rm /usr/bin/AdGuardHome/data/querylog.json.1   
![image](https://github.com/lfsakura0/Actions-ipq6000-mt798x-openwrt/assets/135017778/bd331458-57bf-4c5d-b19b-0937c2746ccf)
