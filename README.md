自用兆能m2固件，无wifi有usb，后台地址：192.168.10.1，密码：password

adguardhone插件订阅的规则会占用硬盘，存储空间不够就一直无法订阅，建议插个U盘把adguardhome的路径全部替换转移过去，规则多了及其吃内存，建议使用改成1G的机器

adguardhome的缓存日志会一直占用空间，可以通过计划任务删除那个文件  把路径修改为自己的路径就行，具体内容来自恩山帖子 https://www.right.com.cn/FORUM/thread-8309079-1-1.html

50 5 * * * [ -f /usr/bin/AdGuardHome/data/querylog.json.1 ] && rm /usr/bin/AdGuardHome/data/querylog.json.1   

![image](https://github.com/lfsakura0/Actions-ipq6000-mt798x-openwrt/assets/135017778/bd331458-57bf-4c5d-b19b-0937c2746ccf)

![image](https://github.com/lfsakura0/Actions-ipq6000-mt798x-openwrt/assets/135017778/a17411a7-9873-411e-97a9-782f544fe2a3)
![image](https://github.com/lfsakura0/Actions-ipq6000-mt798x-openwrt/assets/135017778/3e01d9fd-a2a0-4137-bd0a-dfc6f85b8f5b)![image](https://github.com/lfsakura0/Actions-ipq6000-mt798x-openwrt/assets/135017778/5144595a-02d4-427f-9295-568db861c252)![image](https://github.com/lfsakura0/Actions-ipq6000-mt798x-openwrt/assets/135017778/40aba043-5e1a-4834-89a5-7eed98503098)![image](https://github.com/lfsakura0/Actions-ipq6000-mt798x-openwrt/assets/135017778/6b2de639-e252-41c7-9a12-1c824d3ce04f)

![image](https://github.com/lfsakura0/Actions-ipq6000-mt798x-openwrt/assets/135017778/12e946d3-49f9-478f-a97b-9b2de43611d3)






