FROM nginx:latest

# 删除 Nginx 的默认配置
RUN rm /etc/nginx/conf.d/default.conf

# 添加自定义 Nginx 配置
COPY config/nginx.conf /etc/nginx/conf.d/

# 将web下的html文件拷贝至nginx目录下
COPY web /etc/nginx/web
