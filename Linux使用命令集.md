## 好记性不如烂笔头
######<t>在此记录一些日常使用到的命令，以便日后复习记忆</t>

<br/>

> **调节屏幕亮度**
sudo su
echo 50 > /sys/class/backlight/intel_backlight/brightness
xgamma -gamma .7

<br/>

> **/etc/profile 下添加环境变量**
> **source /etc/profile 更新更改**
`
	export JAVA_HOME=/usr/johnnypro/jdk1.8.0_60
	export PATH=$JAVA_HOME/bin:$PATH
	export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
`

<br/>

> **启动系统管理**
gnome-system-monitor

<br/>

> **netstat命令的功能是显示网络连接、路由表和网络接口信息，可以让用户得知有哪些网络连接正在运作。
> 使用时如果不带参数，netstat显示活动的 TCP 连接。
> 查看mysql网络连接状态**
sudo netstat -tap | grep mysql

<br/>

> **添加屏幕截图快捷键**
> 使用Ubuntu下自带的软件，添加相应快捷键即可，配置如下：
系统－》首选项－》键盘快捷键
添加  在命令里面输入 gnome-screenshot -a 名字自定义 快捷键自定义 如： Ctrl+ALT+a

<br/>

> **删除某目录下所有子目录中的某类文件 **
find . -name "*.text" -exec rm -rf {} \;
其中：
. : 当前目录
{} \ : 固定写法

<br/>

> **解决触控板失灵问题**
root@John:~# modprobe -r psmouse
root@John:~# modprobe psmouse proto=imps
但是重启电脑后，触摸板还是不能用，又需要重新加载模块，所以需要加个自动加载文件，
root@John:~# echo options psmouse proto=imps > /etc/modprobe.d/options

