# Wechat-Program-Gym
Design of WeChat Mini Program System for Sports Department

# 技术栈
- Python Tornado
- 微信小程序
- Nginx

# 使用方式
1. git clone.
2. Run  ``` python wechat_server/setdatabase.py ```. 
3. Run  ``` python wechat_server/server.py ```.  在 8000 端口上开启本地服务器
4. 微信小程序有专业的开发文档指导辅助，根据[微信小程序开发手册](https://developers.weixin.qq.com/miniprogram/dev/framework/)的指导开发者可以进行个性化的小程序制作.
  
# 系统介绍
在本系统中，微信小程序端的服务器兼应用框架使用的是Python的Tornado，使用Nginx反向代理分发Web请求并负载均衡，并用Supervisor进行监控，Handlers中包含反馈后台数据的所有路由。  
微信小程序平台的架构模式如图所示。  
![微信小程序架构模式](https://github.com/FengDushuo/Wechat-Program-Gym/tree/main/media/structure.jpg)  
微信小程序的登录流程时序如图所示。  
![微信小程序登录流程时序](https://github.com/FengDushuo/Wechat-Program-Gym/tree/main/media/login.jpg)  

小程序页面简图：  
![微信小程序首页](https://github.com/FengDushuo/Wechat-Program-Gym/tree/main/media/index.jpg)   
![微信小程序地图](https://github.com/FengDushuo/Wechat-Program-Gym/tree/main/media/map.jpg)   
![微信小程序个人页面](https://github.com/FengDushuo/Wechat-Program-Gym/tree/main/media/myself.jpg)   

