# spring-boot-CloudDisk

## 介绍 

基于SpringBoot+elFinder搭建的私有云盘服务

## 推荐

支付服务：https://gitee.com/52itstyle/spring-boot-pay

任务调度：https://gitee.com/52itstyle/spring-boot-quartz

邮件服务：https://gitee.com/52itstyle/spring-boot-mail

搜索服务：https://gitee.com/52itstyle/spring-boot-elasticsearch

私人网盘：https://gitee.com/52itstyle/spring-boot-CloudDisk

## 环境搭建

| 软件 | 版本  | 功能|   地址|
| ---- | ----- |----- |----- |
|   SpringBoot|  1.5.10 |  全能框架   | https://spring.io/projects/spring-boot/  |
|   elFinder| 2.1.38 |  Web文件管理器|  https://studio-42.github.io/elFinder/ |


## 项目截图

![输入图片说明](https://images.gitee.com/uploads/images/2019/0412/213748_a783eade_87650.png "1.png")

![输入图片说明](https://images.gitee.com/uploads/images/2019/0412/213754_5f32d179_87650.png "2.png")

![输入图片说明](https://images.gitee.com/uploads/images/2019/0412/213759_a38c9c5c_87650.png "3.png")

![输入图片说明](https://images.gitee.com/uploads/images/2019/0412/213807_ec5dc9f8_87650.png "4.png")

![输入图片说明](https://images.gitee.com/uploads/images/2019/0412/213816_5bf1828e_87650.png "5.png")

## 参数配置


```
# 执行类，内部调用，实现前端相关功能
file-manager.command=com.itstyle.cloud.common.elfinder.command
file-manager.thumbnail.width=80
file-manager.volumes[0].Node=
file-manager.volumes[0].source=fileSystem
file-manager.volumes[0].alias=file
# 文件存放目录，可以自定义
file-manager.volumes[0].path=D:/cloudFile
file-manager.volumes[0]._default=true
file-manager.volumes[0].locale=
file-manager.volumes[0].constraint.locked=false
file-manager.volumes[0].constraint.readable=true
file-manager.volumes[0].constraint.writable=true
```


## 文件管理

- 文件以及文件夹新增，删除，移动，重名
- 在线打包文件
- 文件下载、上传 
- 在线预览文件，图片
- 在线处理图片，文件

## 演示

 
https://cloud.52itstyle.vip/
 

